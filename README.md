# Ferry evict cache and list

Tries to reproduce/illustrate an issue with ferry's cache where:

1. A list of objects is received
2. One of the object of the list is deleted used `evict`
3. The list becomes empty

---

After investigation (see the code example in `lib/`), it seems to work properly.
