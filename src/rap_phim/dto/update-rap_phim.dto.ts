import { PartialType } from '@nestjs/mapped-types';
import { CreateRapPhimDto } from './create-rap_phim.dto';

export class UpdateRapPhimDto extends PartialType(CreateRapPhimDto) {}
