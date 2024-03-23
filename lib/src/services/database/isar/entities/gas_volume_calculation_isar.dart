import 'package:isar/isar.dart';

import '../../../../shared/domain/nominal_pipe_size.dart';

part 'gas_volume_calculation_isar.g.dart';

@collection
class GasVolumeCalculationIsar {
  Id id = Isar.autoIncrement;
  @enumerated
  late final NominalPipeSize nominalPipeSize;
  late final double length;
  late final double pressure;
  late final double gasVolume;
  @Index(caseSensitive: false)
  late final DateTime calculatedDate;
}
