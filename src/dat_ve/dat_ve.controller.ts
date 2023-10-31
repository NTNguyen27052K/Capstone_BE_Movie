import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { DatVeService } from './dat_ve.service';
import { CreateDatVeDto } from './dto/create-dat_ve.dto';
import { UpdateDatVeDto } from './dto/update-dat_ve.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('QuanLyDatVe')
@Controller('dat-ve')
export class DatVeController {
  constructor(private readonly datVeService: DatVeService) {}

  @Post()
  create(@Body() createDatVeDto: CreateDatVeDto) {
    return this.datVeService.create(createDatVeDto);
  }

  @Get()
  findAll() {
    return this.datVeService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.datVeService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateDatVeDto: UpdateDatVeDto) {
    return this.datVeService.update(+id, updateDatVeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.datVeService.remove(+id);
  }
}
