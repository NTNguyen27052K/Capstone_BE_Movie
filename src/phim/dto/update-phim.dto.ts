import { PartialType } from '@nestjs/mapped-types';
import { CreatePhimDto } from './create-phim.dto';

export class UpdatePhimDto extends PartialType(CreatePhimDto) {}
