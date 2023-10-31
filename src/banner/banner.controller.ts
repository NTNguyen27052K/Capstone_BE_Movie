import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { BannerService } from './banner.service';
import { CreateBannerDto } from './dto/create-banner.dto';
import { UpdateBannerDto } from './dto/update-banner.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('QuanLyPhim')
@Controller('QuanLyPhim')
export class BannerController {
  constructor(private readonly bannerService: BannerService) {}

  //! LayDanhSachBanner
  @Get('/LayDanhSachBanner')
  layDanhSachBanner() {
    try {
      return this.bannerService.layDanhSachBanner();
    } catch (error) {}
  }
  //! LayDanhSachPhim
  @Get('/LayDanhSachPhim')
  findAll() {
    return this.bannerService.layDanhSachPhim();
  }

  @Post()
  create(@Body() createBannerDto: CreateBannerDto) {
    return this.bannerService.create(createBannerDto);
  }
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.bannerService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBannerDto: UpdateBannerDto) {
    return this.bannerService.update(+id, updateBannerDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.bannerService.remove(+id);
  }
}
