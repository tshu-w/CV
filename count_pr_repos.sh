#!/usr/bin/env bash

QUERY=$(cat <<'EOF'
query ($after: String) {
  search(query: "is:pr author:tshu-w", type: ISSUE, first: 100, after: $after) {
    issueCount
    pageInfo {
      endCursor
      hasNextPage
    }
    nodes {
      ... on PullRequest {
        repository {
          nameWithOwner
        }
      }
    }
  }
}
EOF
)

REPOS=()
HAS_NEXT_PAGE=true
END_CURSOR=null

while [ "$HAS_NEXT_PAGE" = true ]; do
  RESPONSE=$(gh api graphql -F query="$QUERY" -F after="$END_CURSOR")
  END_CURSOR=$(echo "$RESPONSE" | jq -r '.data.search.pageInfo.endCursor')
  HAS_NEXT_PAGE=$(echo "$RESPONSE" | jq -r '.data.search.pageInfo.hasNextPage')
  NEW_REPOS=$(echo "$RESPONSE" | jq -r '.data.search.nodes[].repository.nameWithOwner')

  # Append new repositories to the array
  REPOS+=($NEW_REPOS)
done

echo "${REPOS[@]}" | tr ' ' '\n' | sort | uniq
echo "${REPOS[@]}" | tr ' ' '\n' | sort | uniq | wc -l
