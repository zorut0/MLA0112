graph = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F', 'G'],
    'D': [],
    'E': [],
    'F': [],
    'G': []
}

def depth_limited_search(node, goal, limit, path):
    path.append(node)

    if node == goal:
        return True

    if limit <= 0:
        path.pop()
        return False

    for neighbor in graph[node]:
        if depth_limited_search(neighbor, goal, limit - 1, path):
            return True

    path.pop()
    return False

start = 'A'
goal = 'F'
depth_limit = 2

path = []

if depth_limited_search(start, goal, depth_limit, path):
    print("Goal Found!")
    print("Path:", " -> ".join(path))
else:
    print("Goal Not Found within Depth Limit")