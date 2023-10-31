import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PhimService } from './phim.service';
import { CreatePhimDto } from './dto/create-phim.dto';
import { UpdatePhimDto } from './dto/update-phim.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('QuanLyPhim')
@Controller('phim')
export class PhimController {
  constructor(private readonly phimService: PhimService) {}

  @Post()
  create(@Body() createPhimDto: CreatePhimDto) {
    return this.phimService.create(createPhimDto);
  }

  @Get()
  findAll() {
    return this.phimService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.phimService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePhimDto: UpdatePhimDto) {
    return this.phimService.update(+id, updatePhimDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.phimService.remove(+id);
  }
}
