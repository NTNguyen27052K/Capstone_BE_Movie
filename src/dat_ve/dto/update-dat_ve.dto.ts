import { PartialType } from '@nestjs/mapped-types';
import { CreateDatVeDto } from './create-dat_ve.dto';

export class UpdateDatVeDto extends PartialType(CreateDatVeDto) {}
