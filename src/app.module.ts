import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PhimModule } from './phim/phim.module';
import { BannerModule } from './banner/banner.module';

import { RapPhimModule } from './rap_phim/rap_phim.module';
import { HeThongRapModule } from './he_thong_rap/he_thong_rap.module';
import { CumRapModule } from './cum_rap/cum_rap.module';
import { GheModule } from './ghe/ghe.module';
import { LichChieuModule } from './lich_chieu/lich_chieu.module';
import { NguoiDungModule } from './nguoi_dung/nguoi_dung.module';
import { DatVeModule } from './dat_ve/dat_ve.module';

@Module({
  imports: [
    PhimModule,
    BannerModule,
    RapPhimModule,
    HeThongRapModule,
    CumRapModule,
    GheModule,
    LichChieuModule,
    NguoiDungModule,
    DatVeModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
