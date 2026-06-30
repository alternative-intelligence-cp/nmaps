# NMAPS

A pure native implementation of high-performance Maps and Associative Arrays for Nitpick.
**No C-Dependencies, No Shims, 100% Native.**

## Features

- **Pure Native Map Allocation**: Highly optimized block allocation and generic heap integrations.
- **State-of-the-art Hashing**: `FNV-1a` (32/64-bit) and `Murmur3` hashing integrated natively.
- **Open Addressing IntMap**: Blazing fast `int64` -> `int64` map with Robin Hood / Linear Probing styles.

## Build & Usage

To compile the `nmaps` repository natively using the Nitpick compiler (`npkc`):

```bash
# Compile and run the benchmark suite
npkc tests/benchmark_nmaps.npk -o tests/benchmark_nmaps
./tests/benchmark_nmaps
```

To use `nmaps` in your own Nitpick projects, simply import the required map type:
```nitpick
use "path/to/nmaps/src/intmap.npk".*;

pub func:main = int32() {
    int64:map = raw IntMap.create(16i64);
    drop raw IntMap.put(map, 100i64, 42i64);
    drop raw IntMap.destroy(map);
    exit 0i32;
};
```

## API Reference

### `src/intmap.npk`
- `create(initial_capacity)`: Initializes an Open Addressing IntMap.
- `put(map, key, val)`: Inserts a key-value pair, handling automatic dynamic rehashing when load factor > 70%.
- `get(map, key, out_val_ptr)`: Retrieves a value by key. Returns 1 if found, 0 otherwise.
- `remove(map, key)`: Deletes a key via a tombstone, preserving linear probe chains.
- `destroy(map)`: Frees the entire map and its internal buckets.

### `src/hash.npk`
- `fnv1a(data, len)`: 64-bit FNV-1a hash.
- `fnv1a_32(data, len)`: 32-bit FNV-1a hash.
- `murmur3_32(data, len)`: 32-bit MurmurHash3.
- `hash_int64(key)`: 64-bit fast integer mixer (SplitMix64 variant).

### `src/mapv.npk` (Universal Map)
- `mapv_create(initial_capacity)`: Initializes a Universal Map.
- `mapv_put(map, key_tag, key, val_tag, val)`: Inserts a tagged key-value pair.
- `mapv_get(map, key_tag, key, out_tag_ptr, out_val_ptr)`: Retrieves a tagged value.
- `mapv_remove(map, key_tag, key)`: Removes a generic key.

### `src/mapc.npk` (Chained Hash Map)
- `mapc_create(initial_capacity)`: Initializes a Chained Hash Map.
- `mapc_put(map, key, val)`: Inserts via Linked List collision resolution.
- `mapc_get(map, key, out_val_ptr)`: Retrieves a value by key.

### `src/treemap.npk` (Binary Search Tree)
- `treemap_create()`: Initializes a generic BST map.
- `treemap_put(map, key, val)`: Inserts node and preserves binary search order.
- `treemap_get(map, key, out_val_ptr)`: Binary searches the tree for $O(\log N)$ lookups.
- `treemap_remove(map, key)`: Deletes node by finding in-order successor and reconnecting subtrees.

### `src/lru.npk` (LRU Cache)
- `lru_create(max_capacity)`: Initializes a size-constrained cache backed by an IntMap and doubly-linked list.
- `lru_put(lru, key, val)`: Appends to head; seamlessly evicts tail node to MapAllocator and clears from Hash map on overflow.
- `lru_get(lru, key, out_val_ptr)`: Retrieves key and resets accessed node to head position.

## Status
- **Cycle 0.1**: Foundation & Hashing Core (Completed)
- **Cycle 0.2**: Core HashMap / IntMap (Completed)
- **Cycle 0.3**: Universal & Specialized Maps (Completed)
- **Cycle 0.4**: Ordered Maps (`TreeMap` & `LRU`) (Completed)
- **Cycle 0.5**: Validation, Benchmarks & Release (Completed)
