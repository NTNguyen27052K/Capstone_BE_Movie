import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { HeThongRapService } from './he_thong_rap.service';
import { CreateHeThongRapDto } from './dto/create-he_thong_rap.dto';
import { UpdateHeThongRapDto } from './dto/update-he_thong_rap.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('QuanLyRap')
@Controller('QuanLyRap')
export class HeThongRapController {
  constructor(private readonly heThongRapService: HeThongRapService) {}

  @Get('/LayThongTinHeThongRap')
  findAll() {
    try {
      return this.heThongRapService.layThongTinHeThongRap();
    } catch (error) {
      return error;
    }
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.heThongRapService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateHeThongRapDto: UpdateHeThongRapDto,
  ) {
    return this.heThongRapService.update(+id, updateHeThongRapDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.heThongRapService.remove(+id);
  }
}
