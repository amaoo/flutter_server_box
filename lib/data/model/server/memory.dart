class Memory {
  int total;
  int used;
  int free;
  int cache;
  int avail;
  Memory(
      {required this.total,
      required this.used,
      required this.free,
      required this.cache,
      required this.avail});
}

final memItemReg = RegExp(r'([A-Z].+:)\s+([0-9]+) kB');

Memory parseMem(String raw) {
  final items = raw.split('\n').map((e) => memItemReg.firstMatch(e)).toList();
  final total = int.parse(
      items.firstWhere((e) => e?.group(1) == 'MemTotal:')?.group(2) ?? '1');
  final free = int.parse(
      items.firstWhere((e) => e?.group(1) == 'MemFree:')?.group(2) ?? '0');
  final cached = int.parse(
      items.firstWhere((e) => e?.group(1) == 'Cached:')?.group(2) ?? '0');
  final available = int.parse(
      items.firstWhere((e) => e?.group(1) == 'MemAvailable:')?.group(2) ?? '0');
  return Memory(
      total: total,
      used: total - available,
      free: free,
      cache: cached,
      avail: available);
}
