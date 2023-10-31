import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { LichChieuService } from './lich_chieu.service';
import { CreateLichChieuDto } from './dto/create-lich_chieu.dto';
import { UpdateLichChieuDto } from './dto/update-lich_chieu.dto';

@Controller('lich-chieu')
export class LichChieuController {
  constructor(private readonly lichChieuService: LichChieuService) {}

  @Post()
  create(@Body() createLichChieuDto: CreateLichChieuDto) {
    return this.lichChieuService.create(createLichChieuDto);
  }

  @Get()
  findAll() {
    return this.lichChieuService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.lichChieuService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateLichChieuDto: UpdateLichChieuDto) {
    return this.lichChieuService.update(+id, updateLichChieuDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.lichChieuService.remove(+id);
  }
}
