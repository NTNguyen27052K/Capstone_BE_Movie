import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { NguoiDungService } from './nguoi_dung.service';

import { ApiTags } from '@nestjs/swagger';
import { loginDto } from './dto/login.dto';
import { signupDto } from './dto/signup.dto';

@ApiTags('QuanLyNguoiDung')
@Controller('QuanLyNguoiDung')
export class NguoiDungController {
  constructor(private readonly nguoiDungService: NguoiDungService) {}

  @Get('/LayDanhSachNguoiDung')
  layDanhSachNguoiDung() {
    return this.nguoiDungService.layDanhSachNguoiDung();
  }

  @Post('/DangNhap')
  login(@Body() body: loginDto) {
    return this.nguoiDungService.login(body);
  }
  @Post('/DangKy')
  signup(@Body() body: signupDto) {
    return this.nguoiDungService.signup(body);
  }
}
