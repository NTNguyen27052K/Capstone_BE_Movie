import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { RapPhimService } from './rap_phim.service';
import { CreateRapPhimDto } from './dto/create-rap_phim.dto';
import { UpdateRapPhimDto } from './dto/update-rap_phim.dto';

@Controller('rap-phim')
export class RapPhimController {
  constructor(private readonly rapPhimService: RapPhimService) {}

  @Post()
  create(@Body() createRapPhimDto: CreateRapPhimDto) {
    return this.rapPhimService.create(createRapPhimDto);
  }

  @Get()
  findAll() {
    return this.rapPhimService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.rapPhimService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateRapPhimDto: UpdateRapPhimDto) {
    return this.rapPhimService.update(+id, updateRapPhimDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.rapPhimService.remove(+id);
  }
}
