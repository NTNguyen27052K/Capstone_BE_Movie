import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { CumRapService } from './cum_rap.service';
import { CreateCumRapDto } from './dto/create-cum_rap.dto';
import { UpdateCumRapDto } from './dto/update-cum_rap.dto';

@Controller('cum-rap')
export class CumRapController {
  constructor(private readonly cumRapService: CumRapService) {}

  @Post()
  create(@Body() createCumRapDto: CreateCumRapDto) {
    return this.cumRapService.create(createCumRapDto);
  }

  @Get()
  findAll() {
    return this.cumRapService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.cumRapService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateCumRapDto: UpdateCumRapDto) {
    return this.cumRapService.update(+id, updateCumRapDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.cumRapService.remove(+id);
  }
}
