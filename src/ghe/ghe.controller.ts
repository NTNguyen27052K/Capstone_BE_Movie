import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { GheService } from './ghe.service';
import { CreateGheDto } from './dto/create-ghe.dto';
import { UpdateGheDto } from './dto/update-ghe.dto';

@Controller('ghe')
export class GheController {
  constructor(private readonly gheService: GheService) {}

  @Post()
  create(@Body() createGheDto: CreateGheDto) {
    return this.gheService.create(createGheDto);
  }

  @Get()
  findAll() {
    return this.gheService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.gheService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateGheDto: UpdateGheDto) {
    return this.gheService.update(+id, updateGheDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.gheService.remove(+id);
  }
}
