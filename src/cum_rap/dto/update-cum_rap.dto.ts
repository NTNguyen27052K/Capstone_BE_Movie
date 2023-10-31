import { PartialType } from '@nestjs/mapped-types';
import { CreateCumRapDto } from './create-cum_rap.dto';

export class UpdateCumRapDto extends PartialType(CreateCumRapDto) {}
