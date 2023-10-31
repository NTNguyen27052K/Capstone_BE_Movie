import { PartialType } from '@nestjs/mapped-types';
import { CreateHeThongRapDto } from './create-he_thong_rap.dto';

export class UpdateHeThongRapDto extends PartialType(CreateHeThongRapDto) {}
