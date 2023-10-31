import { PartialType } from '@nestjs/mapped-types';
import { CreateLichChieuDto } from './create-lich_chieu.dto';

export class UpdateLichChieuDto extends PartialType(CreateLichChieuDto) {}
