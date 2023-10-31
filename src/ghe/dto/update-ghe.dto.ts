import { PartialType } from '@nestjs/mapped-types';
import { CreateGheDto } from './create-ghe.dto';

export class UpdateGheDto extends PartialType(CreateGheDto) {}
