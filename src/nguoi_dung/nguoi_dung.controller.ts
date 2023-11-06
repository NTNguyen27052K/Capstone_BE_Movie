import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
} from '@nestjs/common';
import { NguoiDungService } from './nguoi_dung.service';
import { ApiBody, ApiQuery, ApiTags } from '@nestjs/swagger';
import { loginDto } from './dto/login.dto';
import { signupDto } from './dto/signup.dto';
import { findUserDto } from './dto/findUser.dto';

@ApiTags('QuanLyNguoiDung')
@Controller('QuanLyNguoiDung')
export class NguoiDungController {
  constructor(private readonly nguoiDungService: NguoiDungService) {}

  //! LayDanhSachNguoiDung
  @Get('/LayDanhSachNguoiDung')
  layDanhSachNguoiDung() {
    return this.nguoiDungService.layDanhSachNguoiDung();
  }

  //! TimKiemNguoiDung
  @ApiQuery({ name: 'tuKhoa' })
  @Get('/TimKiemNguoiDung')
  timKiemNguoiDung(@Query('tuKhoa') tuKhoa: string) {
    return this.nguoiDungService.timKiemNguoiDung(tuKhoa);
  }

  // @ApiBody({ type: loginDto })
  @Post('/DangNhap')
  login(@Body() body: loginDto) {
    return this.nguoiDungService.login(body);
  }

  @Post('/DangKy')
  signup(@Body() body: signupDto) {
    return this.nguoiDungService.signup(body);
  }
}
