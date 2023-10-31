import { Injectable } from '@nestjs/common';
import { CreateNguoiDungDto } from './dto/create-nguoi_dung.dto';
import { UpdateNguoiDungDto } from './dto/update-nguoi_dung.dto';

import { PrismaService } from 'prisma/prisma.service';
import { loginDto } from './dto/login.dto';

@Injectable()
export class NguoiDungService {
  constructor(private prisma: PrismaService) {}

  layDanhSachNguoiDung() {
    return this.prisma.nguoi_dung.findMany();
  }

  async login(body: loginDto) {
    try {
      let { tai_khoan, mat_khau } = body;

      let checkEmail = await this.prisma.nguoi_dung.findFirst({
        where: {
          tai_khoan,
        },
      });
      let checkMatKhau = await this.prisma.nguoi_dung.findFirst({
        where: {
          mat_khau,
        },
      });

      if (checkEmail) {
        if (checkMatKhau) {
          return 'token';
        } else {
          return 'Mật khẩu không chính xác';
        }
      } else {
        return 'Email không tồn tại';
      }
    } catch (error) {
      return error;
    }
  }
  async signup(body) {
    try {
      let { taiKhoan, hoTen, email, soDT, matKhau } = body;
      let checkEmail = await this.prisma.nguoi_dung.findFirst({
        where: {
          tai_khoan: taiKhoan, //tai_khoan trong csdl //taiKhoan từ clinent
        },
      });
      if (checkEmail) {
        return 'Email đã tồn tại';
      } else {
        await this.prisma.nguoi_dung.create({
          data: {
            tai_khoan: taiKhoan,
            ho_ten: hoTen,
            email,
            so_dt: soDT,
            mat_khau: matKhau,
          },
        });
        return 'Đăng ký thành công';
      }
    } catch (error) {}

    return `This action returns a nguoiDung`;
  }

  create(createNguoiDungDto: CreateNguoiDungDto) {
    return 'This action adds a new nguoiDung';
  }
  update(id: number, updateNguoiDungDto: UpdateNguoiDungDto) {
    return `This action updates a #${id} nguoiDung`;
  }

  remove(id: number) {
    return `This action removes a #${id} nguoiDung`;
  }
}
