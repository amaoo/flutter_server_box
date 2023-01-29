import 'package:toolbox/data/model/server/cpu_status.dart';
import 'package:toolbox/data/model/server/disk_info.dart';
import 'package:toolbox/data/model/server/memory.dart';
import 'package:toolbox/data/model/server/net_speed.dart';
import 'package:toolbox/data/model/server/tcp_status.dart';

///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///

class ServerStatus {
/*
{
  "cpuPercent": 0,
  "memList": [
    1
  ],
  "sysVer": "",
  "uptime": "",
  "disk": [
    {
      "mountPath": "",
      "mountLocation": "",
      "usedPercent": 0,
      "used": "",
      "size": "",
      "avail": ""
    }
  ]
} 
*/

  CpuStatus cpu;
  Memory mem;
  String sysVer;
  String uptime;
  List<DiskInfo> disk;
  TcpStatus tcp;
  NetSpeed netSpeed;
  String? failedInfo;

  ServerStatus(this.cpu, this.mem, this.sysVer, this.uptime, this.disk,
      this.tcp, this.netSpeed,
      {this.failedInfo});
}
