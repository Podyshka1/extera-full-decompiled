.class public Lorg/telegram/messenger/FileRefController;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileRefController$Requester;,
        Lorg/telegram/messenger/FileRefController$CachedResult;,
        Lorg/telegram/messenger/FileRefController$Waiter;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/FileRefController;


# instance fields
.field private favStickersWaiter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private lastCleanupTime:J

.field private locationRequester:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Requester;",
            ">;>;"
        }
    .end annotation
.end field

.field private multiMediaCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLObject;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parentRequester:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Requester;",
            ">;>;"
        }
    .end annotation
.end field

.field private recentStickersWaiter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private responseCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileRefController$CachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private savedGifsWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$11VJ0nq7giEtHojhTedYHTo_IeU(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$42(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$67TLyPpeSQNksvyGHayGjOAKoos(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$9(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$82j_ovSGmaq3mR0_GJCdOHPqtqI(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$1(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8vjX2jhR2Vcf3F5mZlBbrO4tXA(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$7(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTN4ShTNF2O42OMLVZWb4DOgPuQ(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$2(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EFG6a0rKESJRADMb510aDQdDr-k(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$25(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EY1qS7VyTjRp4fSjfQEL0VDJDao(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$F0N5S5EozvaIWnMH3r09Svd_Cr4(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$sendErrorToObject$37(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FPJkcFobcG_Up5YRFSQY8eLH7Ac(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$15(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G7CK70inRa5wohsDUQ2hazNbuYk(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$41(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9P_1C8moG38BGwoC6GuDG6xUHs(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$32(Lorg/telegram/messenger/FileRefController$Requester;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ie0LLqbv_iWm0sBlvsF35jLLdBo(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$8(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J0nNpxj9Hk0zcAH1jIMOLoaNe70(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$13(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J1KyZDyyBsyacwdIsSLSH6FreGA(Lorg/telegram/tgnet/TLRPC$TL_theme;)V
    .locals 0

    .line 1167
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->setThemeFileReference(Lorg/telegram/tgnet/TLRPC$TL_theme;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KiuatnwuKdxSaJlLBVbmDae5gts(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LN1JdHjG3sV_jPNS2hg2hjBBeKc(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$LOzs9xE-0LGkye4fxWnukAlDOw8(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$3(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjE7bGOyQklMXrEPwFy4Z_pAqYk(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$0(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MiznkhkWnNXVoeK6UbXViZ8DFPo(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$31(Lorg/telegram/messenger/FileRefController$Requester;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NgzfdWN5HHAX1qHK0f0MVILPEP0(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$10(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OHxIU1zft3mLUg2R8BuKCBppUGg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$QTprkZ8o2dTxOzlMd_dvBRJkmNA(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$27(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDdUxGBZ1-bcmE_o5kisMQZX0rs(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$28(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RgUKJ8aaXPVJtnEMq_9aaqAbt8I(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$16(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T98R8Tcgp3A40FKNJLxLYlzQrEA(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TnBVAujtfk0a9yiAMVfDaV7V4c8(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$12(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$USvmHovkwFn7ioWNa4ioGofQVUQ(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$29(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2P6M7AEKasXg2Yk44syTLbS4hk(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$onUpdateObjectReference$30(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6mNS2J02YUX2Pu6NR3hTqW6kls(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$11(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XcYU-I-bJjjq5fpwDpi0VErAd80(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xr9jVkx3z_Lmzfa_5vuCWghL56w(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$44(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ybx3I86xjuH6FOAHT3YEBZ_xDp4(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$onRequestComplete$43(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ycm1HN5eVu5AVpqN8tIBwapodBk(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfdfFDqOnmXdqYWngmMsAE4wODk(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$24(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUAaC8yU0Gk7t1MQbNkowZAdLiQ(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$26(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bAlvBx-VzptTqjEisIdguGwQ2lg(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$23(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3E3wgHKFWC-qzIn-BibVzOXxDU(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$sendErrorToObject$38(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drb0CymGP8SXkuGz-Ztz_tXIxa0(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$22(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$efALURo8rR2dl48evzNxQP_Rs4s(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$14(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4DPn7UaYqtJIEseYNsW_4eZI0k(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lIHXDhgmQFjOU2SXTlRAKgUZatA(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7qx6LrV7D23-2PXBZk-U8QO9FM(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$21(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFCIKAVm7KKfmifYis59-38OlZ4(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileRefController;->lambda$requestReferenceFromServer$6(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wXqR9oDytHP9-wPUZQoWF9mWlWQ(Lorg/telegram/messenger/FileRefController;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->lambda$sendErrorToObject$39([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLpXUCCmmkTcmIXKtdR8GqrnykY(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 59
    new-array v0, v0, [Lorg/telegram/messenger/FileRefController;

    sput-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    return-void
.end method

.method private broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileRefController$Waiter;",
            ">;",
            "Lorg/telegram/tgnet/TLObject;",
            "Lorg/telegram/tgnet/TLRPC$TL_error;",
            ")V"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 429
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileRefController$Waiter;

    .line 430
    invoke-static {v3}, Lorg/telegram/messenger/FileRefController$Waiter;->-$$Nest$fgetlocationKey(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lorg/telegram/messenger/FileRefController$Waiter;->-$$Nest$fgetparentKey(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    const/4 v10, 0x0

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private cleanupCache()V
    .locals 8

    .line 1778
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_2

    .line 1781
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileRefController;->lastCleanupTime:J

    .line 1784
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1785
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileRefController$CachedResult;

    .line 1786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetfirstQueryTime(Lorg/telegram/messenger/FileRefController$CachedResult;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    if-nez v1, :cond_2

    .line 1788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 1794
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1795
    iget-object v3, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;
    .locals 5

    .line 1848
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    if-eqz v0, :cond_0

    .line 1849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetfirstQueryTime(Lorg/telegram/messenger/FileRefController$CachedResult;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 1850
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public static getFileRefErrorIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 2080
    :cond_0
    const-string v1, "FILE_REFERENCE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_EXPIRED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2082
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1956
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_5

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v2, :cond_0

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1959
    :cond_0
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1960
    aput-boolean v1, p3, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v10, p3

    move-object v9, p4

    .line 1961
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1962
    new-array p1, v3, [B

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v10, p3

    move-object v9, p4

    .line 1966
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, p1, v8, v10}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1967
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1968
    new-array p1, v3, [B

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 1971
    iget-object p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, p1, v8, v10}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object p1

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1972
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1973
    new-array p1, v3, [B

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$InputFileLocation;",
            "[Z[",
            "Lorg/telegram/tgnet/TLRPC$InputFileLocation;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 1870
    :cond_0
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1871
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v5, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 1872
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    return-object p1

    .line 1875
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1876
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1877
    invoke-direct {p0, v4, p3, p4}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v5

    if-eqz p4, :cond_2

    .line 1878
    aget-boolean v6, p4, v2

    if-eqz v6, :cond_2

    .line 1879
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    aput-object p2, p5, v2

    .line 1880
    iget-wide p4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide p4, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1881
    iget-wide p4, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide p4, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1882
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1883
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1884
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1885
    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    return-object p1

    :cond_2
    if-eqz v5, :cond_3

    return-object v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 1895
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 1896
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-object p3, v6

    move-object p4, v7

    move-object p5, v8

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2016
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2019
    :cond_0
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-ne v1, v2, :cond_2

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_2

    .line 2020
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2021
    aput-boolean v0, p3, p2

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1984
    :cond_0
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    if-eqz v1, :cond_2

    .line 1985
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    return-object p1

    :cond_1
    return-object v0

    .line 1986
    :cond_2
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-eqz v1, :cond_5

    .line 1987
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1988
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1989
    invoke-direct {p0, v4, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v5

    if-eqz p3, :cond_3

    .line 1990
    aget-boolean v6, p3, v2

    if-eqz v6, :cond_3

    .line 1991
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    aput-object p3, p4, v2

    .line 1992
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1993
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1994
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1995
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1996
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1997
    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    return-object p1

    :cond_3
    if-eqz v5, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 2009
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2012
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 8

    if-eqz p1, :cond_4

    .line 1939
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_4

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1942
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object v6, p4

    .line 1943
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1944
    new-array p1, p2, [B

    return-object p1

    :cond_1
    if-nez v0, :cond_3

    .line 1947
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0, p1, v5, v7}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)[B

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1948
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileRefController;->getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1949
    new-array p1, p2, [B

    :cond_2
    return-object p1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B
    .locals 9

    .line 2029
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 2033
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {p0, p2, v3, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 2037
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_5

    .line 2038
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_5

    .line 2039
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    .line 2040
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;

    if-nez v2, :cond_2

    goto :goto_2

    .line 2043
    :cond_2
    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;

    .line 2044
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, p3

    :goto_1
    if-ge v8, v7, :cond_4

    .line 2045
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object v0, p0

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, 0x1

    move-object v0, p0

    goto :goto_0

    .line 2052
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p2, :cond_9

    .line 2053
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p4, p3

    :goto_3
    if-ge p4, p2, :cond_7

    .line 2054
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    move-object v0, p0

    .line 2059
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge p3, p2, :cond_a

    .line 2060
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {p0, p4, v3, v4, v5}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object p4

    if-eqz p4, :cond_8

    return-object p4

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_9
    move-object v0, p0

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs getFileReferenceFromResponse(Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$InputFileLocation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLObject;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Lorg/telegram/tgnet/TLRPC$InputFileLocation;",
            ">;"
        }
    .end annotation

    move-object/from16 v4, p1

    .line 1336
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_1

    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v8

    move-object v10, v9

    goto :goto_1

    .line 1337
    :cond_1
    :goto_0
    new-array v0, v7, [Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 1338
    new-array v1, v7, [Z

    move-object v9, v0

    move-object v10, v1

    :goto_1
    const/4 v11, 0x0

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1341
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReferenceFromResponse(Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 1344
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    .line 1345
    check-cast v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    aput-object v0, v9, v11

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :cond_3
    move-object v1, v8

    .line 1349
    :cond_4
    :goto_2
    instance-of v0, v5, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    if-eqz v0, :cond_8

    .line 1350
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    .line 1351
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_5

    .line 1352
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move-object v3, v10

    .line 1353
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_6

    .line 1354
    invoke-direct {v2, v0, v4, v3, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_6
    :goto_3
    move-object v3, v2

    :cond_7
    :goto_4
    move-object v9, v6

    goto/16 :goto_24

    :cond_8
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v6, v9

    move-object v3, v10

    .line 1356
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_1d

    .line 1357
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1358
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1359
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v11

    :goto_5
    if-ge v10, v9, :cond_1b

    .line 1360
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1361
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v13, :cond_12

    .line 1362
    move-object v12, v5

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    move v13, v11

    .line 1363
    :goto_6
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_11

    .line 1364
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 1365
    instance-of v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v14, :cond_e

    .line 1366
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v14, :cond_e

    .line 1368
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    move-object v5, v3

    .line 1369
    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v1, v2

    move-object v15, v5

    goto :goto_7

    :cond_9
    move-object v5, v3

    .line 1370
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v2, :cond_b

    .line 1371
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v3, v1

    move-object v15, v5

    if-nez v2, :cond_a

    .line 1373
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {v3, v1, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_7

    :cond_a
    move-object v1, v2

    goto :goto_7

    :cond_b
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v15, v5

    .line 1375
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_c

    .line 1376
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_7

    .line 1377
    :cond_c
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_d

    .line 1378
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_d
    :goto_7
    if-nez v1, :cond_f

    .line 1380
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_f

    .line 1381
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_8

    :cond_e
    move-object v15, v3

    move-object v3, v2

    :cond_f
    :goto_8
    if-eqz v1, :cond_10

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v13, v13, 0x1

    move-object v2, v3

    move-object v3, v15

    goto :goto_6

    :cond_11
    move-object v15, v3

    move-object v3, v2

    goto/16 :goto_a

    :cond_12
    move-object v15, v3

    move-object v3, v2

    if-eqz v5, :cond_18

    .line 1390
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_14

    .line 1391
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    :cond_13
    move-object v1, v2

    goto :goto_9

    .line 1392
    :cond_14
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v2, :cond_15

    .line 1393
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v3, v1

    if-nez v2, :cond_13

    .line 1395
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {v3, v1, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_9

    :cond_15
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1397
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_16

    .line 1398
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_9

    .line 1399
    :cond_16
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_17

    .line 1400
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_17
    :goto_9
    if-nez v1, :cond_1a

    .line 1402
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_1a

    .line 1403
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_a

    .line 1405
    :cond_18
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v5, :cond_19

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    if-eqz v5, :cond_1a

    .line 1406
    :cond_19
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {v3, v1, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_1a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object v2, v3

    move-object v3, v15

    goto/16 :goto_5

    :cond_1b
    move-object v3, v2

    if-nez v1, :cond_7

    .line 1410
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5, v0, v7}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1411
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_7

    .line 1412
    const-string v0, "file ref not found in messages, replacing message"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1c
    move-object v3, v2

    .line 1416
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_7

    .line 1417
    const-string v0, "empty messages, file ref not found"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1d
    move-object v15, v3

    move-object v3, v2

    .line 1420
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_20

    .line 1421
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    .line 1422
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v11

    :goto_b
    if-ge v2, v7, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v2, 0x1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v5, v15

    .line 1423
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_1e

    :goto_c
    move-object v1, v2

    goto :goto_d

    :cond_1e
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v1, v2

    move v2, v9

    goto :goto_b

    :cond_1f
    :goto_d
    move-object/from16 v3, p0

    goto/16 :goto_4

    .line 1428
    :cond_20
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    if-eqz v0, :cond_28

    .line 1429
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->hash:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v9, v12

    long-to-int v5, v9

    invoke-virtual {v2, v3, v4, v5, v11}, Lorg/telegram/messenger/MediaDataController;->processLoadedReactions(Ljava/util/List;IIZ)V

    .line 1432
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v11

    :goto_e
    if-ge v2, v7, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v2, 0x1

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 1433
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_21

    :goto_f
    goto :goto_c

    .line 1437
    :cond_21
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_22

    goto :goto_f

    .line 1441
    :cond_22
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_23

    goto :goto_f

    .line 1445
    :cond_23
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_24

    goto :goto_f

    .line 1449
    :cond_24
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->effect_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_25

    goto :goto_f

    .line 1453
    :cond_25
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_26

    goto :goto_f

    .line 1457
    :cond_26
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v15, v5

    if-eqz v2, :cond_27

    goto :goto_f

    :cond_27
    move-object v1, v2

    move v2, v9

    goto :goto_e

    .line 1462
    :cond_28
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    if-eqz v0, :cond_2a

    .line 1463
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1466
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->full_user:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 1467
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v9, :cond_1f

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    if-nez v1, :cond_29

    .line 1471
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    goto :goto_10

    :cond_29
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    :goto_10
    if-nez v1, :cond_7

    .line 1474
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {v3, v0, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto/16 :goto_4

    :cond_2a
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1477
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    if-eqz v0, :cond_2c

    .line 1478
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1479
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v11

    :goto_11
    if-ge v2, v7, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v2, 0x1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    .line 1480
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_2b

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v1, v2

    move v2, v9

    goto :goto_11

    .line 1485
    :cond_2c
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    if-eqz v0, :cond_2f

    .line 1486
    move-object v9, v5

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1488
    :try_start_0
    sput-object v9, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1489
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    .line 1491
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1494
    :goto_12
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    .line 1496
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1499
    :goto_13
    :try_start_2
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2d

    .line 1500
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 1501
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 1502
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1503
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1504
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1505
    const-string v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 1507
    new-array v2, v7, [Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    aput-object v0, v2, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_15

    :cond_2d
    move-object v2, v6

    :goto_14
    move-object v6, v2

    goto :goto_16

    .line 1511
    :goto_15
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v8

    :goto_16
    if-nez v1, :cond_2e

    .line 1514
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_17

    :cond_2e
    move-object v5, v15

    :goto_17
    if-nez v1, :cond_1f

    .line 1517
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v3, v1

    goto/16 :goto_19

    :cond_2f
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1519
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    if-eqz v0, :cond_30

    .line 1520
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 1521
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1522
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1523
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-direct {v3, v0, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto/16 :goto_4

    .line 1524
    :cond_30
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_31

    .line 1525
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-direct {v3, v0, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto/16 :goto_4

    .line 1526
    :cond_31
    instance-of v0, v5, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    if-eqz v0, :cond_33

    .line 1527
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    .line 1528
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v11

    :goto_18
    if-ge v9, v7, :cond_1f

    .line 1529
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_32

    goto/16 :goto_c

    :cond_32
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v1, v2

    goto :goto_18

    .line 1534
    :cond_33
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_34

    .line 1535
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1536
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object/from16 v3, p0

    :goto_19
    move-object v1, v0

    goto/16 :goto_4

    .line 1537
    :cond_34
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_35

    .line 1538
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 1539
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v3, v1

    move-object v9, v6

    move-object v1, v0

    goto/16 :goto_24

    :cond_35
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1540
    instance-of v0, v5, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_39

    .line 1541
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/Vector;

    .line 1542
    iget-object v2, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1543
    iget-object v2, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v11

    :goto_1a
    if-ge v5, v2, :cond_7

    .line 1544
    iget-object v7, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1545
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_36

    .line 1546
    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 1547
    invoke-direct {v3, v7, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    goto :goto_1b

    .line 1548
    :cond_36
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_37

    .line 1549
    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1550
    invoke-direct {v3, v7, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_37
    :goto_1b
    if-eqz v1, :cond_38

    goto/16 :goto_4

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1557
    :cond_39
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    if-eqz v0, :cond_3b

    .line 1558
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 1559
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1560
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v11

    :goto_1c
    if-ge v5, v2, :cond_7

    .line 1561
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1562
    invoke-direct {v3, v1, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    if-eqz v1, :cond_3a

    goto/16 :goto_4

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1568
    :cond_3b
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v0, :cond_3d

    .line 1569
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    .line 1570
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v11

    :goto_1d
    if-ge v9, v7, :cond_1f

    .line 1571
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_3c

    goto/16 :goto_c

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v1, v2

    goto :goto_1d

    .line 1576
    :cond_3d
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_3f

    .line 1577
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1f

    .line 1579
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v11

    :goto_1e
    if-ge v9, v7, :cond_1f

    .line 1580
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_3e

    goto/16 :goto_c

    :cond_3e
    add-int/lit8 v9, v9, 0x1

    move-object v1, v2

    goto :goto_1e

    .line 1586
    :cond_3f
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v0, :cond_41

    .line 1587
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    .line 1588
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v11

    :goto_1f
    if-ge v9, v7, :cond_1f

    .line 1589
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_40

    goto/16 :goto_c

    :cond_40
    add-int/lit8 v9, v9, 0x1

    move-object v1, v2

    goto :goto_1f

    .line 1594
    :cond_41
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    if-eqz v0, :cond_43

    .line 1595
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    .line 1596
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v11

    :goto_20
    if-ge v9, v7, :cond_1f

    .line 1597
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v3, v1

    if-eqz v2, :cond_42

    move-object v1, v2

    goto/16 :goto_4

    :cond_42
    add-int/lit8 v9, v9, 0x1

    move-object v1, v2

    goto :goto_20

    :cond_43
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1602
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    if-eqz v0, :cond_45

    .line 1603
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .line 1604
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v11

    :goto_21
    if-ge v5, v2, :cond_7

    .line 1605
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {v3, v1, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    if-eqz v1, :cond_44

    goto/16 :goto_4

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1610
    :cond_45
    instance-of v0, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    if-eqz v0, :cond_7

    .line 1611
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    .line 1613
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 1614
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1615
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_48

    if-nez v1, :cond_46

    .line 1617
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_46

    .line 1618
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_46
    if-nez v1, :cond_47

    .line 1620
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_47

    .line 1621
    invoke-direct {v3, v2, v4, v15, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v1

    :cond_47
    if-nez v1, :cond_49

    .line 1623
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_49

    .line 1624
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_22

    :cond_48
    move-object v0, v8

    .line 1628
    :cond_49
    :goto_22
    aget-object v2, p5, v7

    .line 1629
    instance-of v4, v2, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v4, :cond_7

    .line 1630
    check-cast v2, Lorg/telegram/messenger/FileLoadOperation;

    .line 1631
    iget-object v2, v2, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_7

    .line 1632
    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_4a

    .line 1634
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 1635
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1636
    new-instance v5, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1637
    iget v7, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v7, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 1638
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto :goto_23

    .line 1642
    :cond_4a
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 1643
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v4, :cond_4b

    .line 1644
    iget v4, v3, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object v4

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v4, v9, v10, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    :cond_4b
    :goto_23
    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 1648
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 1649
    iget v5, v3, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1650
    iput-object v0, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1651
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    iget v0, v3, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto/16 :goto_4

    :goto_24
    if-nez v1, :cond_4c

    return-object v8

    .line 1661
    :cond_4c
    new-instance v0, Landroid/util/Pair;

    if-eqz v9, :cond_4e

    aget-object v2, v9, v11

    if-nez v2, :cond_4d

    goto :goto_25

    :cond_4d
    move-object v8, v2

    :cond_4e
    :goto_25
    invoke-direct {v0, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/FileRefController;
    .locals 3

    .line 62
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lorg/telegram/messenger/FileRefController;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lorg/telegram/messenger/FileRefController;->Instance:[Lorg/telegram/messenger/FileRefController;

    new-instance v2, Lorg/telegram/messenger/FileRefController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileRefController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 79
    instance-of v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 80
    check-cast p0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v0, :cond_0

    .line 82
    const-string p0, "failed request reference can\'t find list in botpreview"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v1

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "botstory_doc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "botstory_photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "botstory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const-wide/16 v2, 0x0

    const-string v4, "_"

    if-eqz v0, :cond_5

    .line 93
    check-cast p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 94
    iget-wide v5, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_4

    .line 95
    const-string p0, "failed request reference can\'t find dialogId"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v1

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "story_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_5
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_6

    .line 100
    const-string/jumbo p0, "premium_promo"

    return-object p0

    .line 101
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_7

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "available_reaction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_7
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v0, :cond_8

    .line 104
    check-cast p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bot_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_8
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    if-eqz v0, :cond_9

    .line 107
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 108
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach_menu_bot_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_9
    instance-of v0, p0, Lorg/telegram/messenger/MessageObject;

    const-string/jumbo v5, "message"

    if-eqz v0, :cond_b

    .line 111
    check-cast p0, Lorg/telegram/messenger/MessageObject;

    .line 112
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v0

    .line 113
    iget v2, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_a

    .line 114
    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 116
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_b
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_d

    .line 118
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Message;

    .line 119
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_c

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 120
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_d
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_e

    .line 122
    check-cast p0, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_e
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_f

    .line 125
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_f
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_10

    .line 128
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_10
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 131
    check-cast p0, Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "str"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_11
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const-string/jumbo v2, "set"

    if-eqz v0, :cond_12

    .line 134
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_12
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_13

    .line 137
    check-cast p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_13
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_14

    .line 140
    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_14
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_15

    .line 143
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :cond_15
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_16

    .line 146
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    if-eqz p0, :cond_17

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v1
.end method

.method private getObjectString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 410
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 413
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const-string v1, ")"

    if-eqz v0, :cond_1

    .line 414
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "story(dialogId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 417
    :cond_1
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    .line 418
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message(dialogId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "messageId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPeerReferenceReplacement(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/tgnet/TLRPC$InputFileLocation;[Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    .line 1905
    aget-boolean p6, p6, v0

    if-eqz p6, :cond_2

    .line 1906
    new-instance p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    invoke-direct {p6}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;-><init>()V

    .line 1907
    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iput-wide v1, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1908
    iput-wide v1, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 1909
    iget p4, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iput p4, p6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 1910
    iput-boolean p3, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    if-eqz p1, :cond_0

    .line 1913
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 1914
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 1915
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 1916
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    iput-wide p3, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    goto :goto_1

    .line 1919
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1920
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .line 1921
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 1922
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    .line 1925
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 1926
    iget-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    .line 1929
    :goto_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    iput-wide p2, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    move-object p2, p1

    .line 1931
    :goto_1
    iput-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1932
    aput-object p6, p5, v0

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public static isFileRefError(Ljava/lang/String;)Z
    .locals 1

    .line 2070
    const-string v0, "FILEREF_EXPIRED"

    .line 2071
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FILE_REFERENCE_EXPIRED"

    .line 2072
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FILE_REFERENCE_EMPTY"

    .line 2073
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "FILE_REFERENCE_"

    .line 2074
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFileRefErrorCover(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 2089
    invoke-static {p0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "COVER_EXPIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSameReference([B[B)Z
    .locals 0

    .line 633
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onRequestComplete$41(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    .line 1181
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    return-void
.end method

.method private synthetic lambda$onRequestComplete$42(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 1190
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$43(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 1209
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private synthetic lambda$onRequestComplete$44(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    .line 1237
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->replaceStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$29(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 682
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$30(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 725
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$31(Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 10

    .line 742
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateObjectReference$32(Lorg/telegram/messenger/FileRefController$Requester;)V
    .locals 10

    .line 758
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$0(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 444
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$1(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V
    .locals 2

    .line 443
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/Stories/StoriesController$BotPreview;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$10(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 502
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$11(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 511
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$12(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 520
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$13(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 526
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$14(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 531
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$15(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 537
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$16(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 541
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$17(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$2(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 453
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/FileRefController;->broadcastWaitersData(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$21(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 570
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$22(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 579
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$23(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 587
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$24(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 597
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$25(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 601
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$26(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 615
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$27(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 622
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$28(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 626
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$3(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 459
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v1, :cond_0

    .line 460
    move-object v1, p3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    .line 461
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lorg/telegram/messenger/MediaDataController;->processLoadedPremiumPromo(Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;IZ)V

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 464
    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 469
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 474
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$6(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 479
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$7(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 487
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$8(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 493
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$requestReferenceFromServer$9(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 498
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    return-void
.end method

.method private synthetic lambda$sendErrorToObject$37(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 854
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$sendErrorToObject$38(Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V
    .locals 7

    .line 861
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v1, 0x5

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequestMulti(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Z)V

    return-void
.end method

.method private synthetic lambda$sendErrorToObject$39([Ljava/lang/Object;)V
    .locals 10

    .line 864
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v5, 0x4

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    check-cast v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    const/4 v7, 0x6

    aget-object p1, p1, v7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    .line 893
    instance-of v9, v4, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v9, :cond_0

    .line 894
    const-string/jumbo v2, "premium_promo"

    :goto_0
    move-object v10, v2

    goto :goto_1

    .line 895
    :cond_0
    instance-of v2, v4, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    if-eqz v2, :cond_1

    .line 896
    const-string/jumbo v2, "wallpaper"

    goto :goto_0

    .line 897
    :cond_1
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v2, :cond_2

    .line 898
    const-string v2, "gif"

    goto :goto_0

    .line 899
    :cond_2
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v2, :cond_3

    .line 900
    const-string/jumbo v2, "recent"

    goto :goto_0

    .line 901
    :cond_3
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    if-eqz v2, :cond_4

    .line 902
    const-string v2, "fav"

    goto :goto_0

    :cond_4
    move-object v10, v0

    :goto_1
    const/4 v11, 0x1

    if-eqz v0, :cond_a

    .line 905
    iget-object v2, v1, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    .line 907
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v15, v14, :cond_8

    .line 908
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileRefController$Requester;

    .line 909
    invoke-static {v2}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetcompleted(Lorg/telegram/messenger/FileRefController$Requester;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v3, p4

    move-object v7, v4

    goto :goto_4

    .line 912
    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocationKey(Lorg/telegram/messenger/FileRefController$Requester;)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_6

    if-nez v16, :cond_6

    move v6, v11

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    const/4 v3, 0x0

    move-object/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    move-result v2

    move-object v7, v4

    move-object v3, v5

    if-eqz v2, :cond_7

    move/from16 v16, v11

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object v4, v7

    goto :goto_2

    :cond_8
    move-object/from16 v3, p4

    move-object v7, v4

    if-eqz v16, :cond_9

    .line 917
    invoke-direct {v1, v10, v7}, Lorg/telegram/messenger/FileRefController;->putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 919
    :cond_9
    iget-object v2, v1, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    move-object/from16 v3, p4

    move-object v7, v4

    const/16 v16, 0x0

    .line 925
    :goto_5
    iget-object v0, v1, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_b

    return v16

    .line 930
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v13, :cond_6a

    .line 931
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileRefController$Requester;

    .line 932
    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetcompleted(Lorg/telegram/messenger/FileRefController$Requester;)Z

    move-result v6

    if-eqz v6, :cond_c

    move/from16 v3, p6

    move/from16 v20, v9

    move-object/from16 v22, v10

    move v10, v11

    :goto_7
    const/4 v14, 0x0

    const/16 v17, 0x0

    goto/16 :goto_3a

    :cond_c
    if-eqz v3, :cond_d

    .line 935
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_d

    .line 936
    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    if-le v6, v11, :cond_d

    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v11

    instance-of v6, v6, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v6, :cond_d

    .line 937
    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v11

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation;

    .line 938
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "debug_loading: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " can\'t update file reference: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 941
    :cond_d
    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-nez v6, :cond_f

    invoke-static {v5}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    move-object v6, v2

    move-object v2, v0

    goto :goto_a

    .line 942
    :cond_f
    :goto_9
    new-array v2, v11, [Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 943
    new-array v0, v11, [Z

    goto :goto_8

    .line 945
    :goto_a
    invoke-static {v5, v11}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fputcompleted(Lorg/telegram/messenger/FileRefController$Requester;Z)V

    .line 946
    instance-of v0, v7, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    if-eqz v0, :cond_12

    .line 947
    move-object v0, v7

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    .line 948
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v12, v5

    move-object v5, v2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_10

    .line 949
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_b

    .line 950
    :cond_10
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_11

    .line 951
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    :cond_11
    :goto_b
    move-object v2, v6

    move/from16 v20, v9

    move-object/from16 v22, v10

    :goto_c
    const/4 v14, 0x0

    goto/16 :goto_36

    :cond_12
    move-object v12, v5

    move-object v5, v2

    .line 953
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_28

    .line 954
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 955
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 956
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v14, :cond_24

    .line 957
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 958
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v1, :cond_1b

    .line 959
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    move/from16 v19, v2

    const/4 v1, 0x0

    .line 960
    :goto_e
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 961
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    move/from16 v20, v1

    .line 962
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v1, :cond_17

    .line 963
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_17

    .line 965
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_13

    move-object/from16 v21, v3

    .line 966
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move/from16 v22, v20

    move/from16 v20, v9

    move-object/from16 v9, v21

    move/from16 v21, v22

    move-object/from16 v22, v10

    move-object v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_f

    :cond_13
    move-object/from16 v22, v10

    move/from16 v21, v20

    move-object v10, v1

    move/from16 v20, v9

    move-object v9, v3

    .line 967
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v1, :cond_14

    .line 968
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-nez v4, :cond_16

    .line 970
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_f

    :cond_14
    move-object/from16 v1, p0

    .line 972
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_15

    .line 973
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_f

    .line 974
    :cond_15
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_16

    .line 975
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    :cond_16
    :goto_f
    if-nez v4, :cond_18

    .line 977
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_18

    .line 978
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v4, v2

    goto :goto_10

    :cond_17
    move-object/from16 v1, p0

    move-object/from16 v22, v10

    move/from16 v21, v20

    move/from16 v20, v9

    move-object v9, v3

    :cond_18
    :goto_10
    if-eqz v4, :cond_19

    goto/16 :goto_13

    :cond_19
    add-int/lit8 v2, v21, 0x1

    move v1, v2

    move-object v3, v9

    move/from16 v9, v20

    move-object/from16 v10, v22

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v1, p0

    move/from16 v20, v9

    move-object/from16 v22, v10

    move-object v9, v3

    goto/16 :goto_13

    :cond_1b
    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v20, v9

    move-object/from16 v22, v10

    move-object v9, v3

    if-eqz v11, :cond_20

    .line 987
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1c

    .line 988
    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    move-object/from16 v1, p0

    goto :goto_11

    .line 989
    :cond_1c
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v1, :cond_1d

    .line 990
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-nez v4, :cond_1f

    .line 992
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_game;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_11

    :cond_1d
    move-object/from16 v1, p0

    .line 994
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_1e

    .line 995
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_11

    .line 996
    :cond_1e
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_1f

    .line 997
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    :cond_1f
    :goto_11
    if-nez v4, :cond_22

    .line 999
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_22

    .line 1000
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    :goto_12
    move-object v4, v2

    goto :goto_13

    .line 1002
    :cond_20
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v3, :cond_21

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    if-eqz v3, :cond_22

    .line 1003
    :cond_21
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    goto :goto_12

    :cond_22
    :goto_13
    if-eqz v4, :cond_23

    if-eqz p5, :cond_25

    .line 1007
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v3, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_14

    :cond_23
    const/4 v11, 0x0

    add-int/lit8 v2, v19, 0x1

    move/from16 v9, v20

    move-object/from16 v10, v22

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_24
    move/from16 v20, v9

    move-object/from16 v22, v10

    :cond_25
    const/4 v11, 0x0

    :goto_14
    if-nez v4, :cond_27

    .line 1013
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v9, v0, v10}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1014
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_27

    .line 1015
    const-string v0, "file ref not found in messages, replacing message"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_15

    :cond_26
    move/from16 v20, v9

    move-object/from16 v22, v10

    .line 1019
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_27

    .line 1020
    const-string v0, "empty messages, file ref not found"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_27
    :goto_15
    move-object v2, v6

    goto/16 :goto_c

    :cond_28
    move/from16 v20, v9

    move-object/from16 v22, v10

    if-eqz v20, :cond_2d

    .line 1024
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    .line 1025
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v9, :cond_2a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v2, 0x1

    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    .line 1026
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_29

    goto :goto_17

    :cond_29
    move-object/from16 v1, p0

    move v2, v10

    goto :goto_16

    :cond_2a
    :goto_17
    const/4 v14, 0x0

    :cond_2b
    :goto_18
    move-object/from16 v1, p0

    :cond_2c
    :goto_19
    move-object v2, v6

    goto/16 :goto_36

    .line 1031
    :cond_2d
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    const-wide/16 v9, 0x3e8

    if-eqz v0, :cond_35

    .line 1032
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->hash:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    div-long v9, v23, v9

    long-to-int v9, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v3, v9, v11}, Lorg/telegram/messenger/MediaDataController;->processLoadedReactions(Ljava/util/List;IIZ)V

    .line 1035
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_availableReactions;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v9, :cond_2a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v10, v1, 0x1

    move-object v11, v2

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 1036
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_2e

    :goto_1b
    move-object v4, v2

    goto :goto_17

    .line 1040
    :cond_2e
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_1b

    .line 1044
    :cond_2f
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_30

    goto :goto_1b

    .line 1048
    :cond_30
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_31

    goto :goto_1b

    .line 1052
    :cond_31
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->effect_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_32

    goto :goto_1b

    .line 1056
    :cond_32
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz v2, :cond_33

    goto :goto_1b

    .line 1060
    :cond_33
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_34

    goto/16 :goto_17

    :cond_34
    move v1, v10

    goto :goto_1a

    .line 1065
    :cond_35
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    if-eqz v0, :cond_38

    .line 1066
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->users:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1069
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->full_user:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 1070
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v9, :cond_37

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v1, v0, v10}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 1074
    iget-object v2, v9, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_36

    move/from16 v3, p6

    move-object v0, v5

    move-object v2, v6

    const/4 v10, 0x1

    goto/16 :goto_7

    .line 1080
    :cond_36
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto/16 :goto_15

    :cond_37
    move-object/from16 v1, p0

    goto/16 :goto_15

    :cond_38
    move-object/from16 v1, p0

    .line 1082
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    if-eqz v0, :cond_3e

    .line 1083
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotsBot;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1084
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v14, :cond_3a

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v19, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    .line 1085
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_39

    goto :goto_1d

    :cond_39
    move-object/from16 v1, p0

    move/from16 v2, v19

    goto :goto_1c

    :cond_3a
    :goto_1d
    if-eqz p5, :cond_3d

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    .line 1092
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 1093
    :goto_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_3c

    .line 1094
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-wide/from16 v23, v9

    .line 1095
    iget-wide v9, v11, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    move-object v14, v4

    move-object v11, v5

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v4, v9, v4

    if-nez v4, :cond_3b

    .line 1096
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    move-object v5, v11

    move-object v4, v14

    move-wide/from16 v9, v23

    goto :goto_1e

    :cond_3c
    move-object v14, v4

    move-object v11, v5

    move-wide/from16 v23, v9

    .line 1100
    :goto_1f
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    move-wide/from16 v2, v23

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v23

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->hash:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v2

    long-to-int v0, v9

    const/16 v28, 0x0

    move/from16 v27, v0

    move-object/from16 v24, v1

    move-wide/from16 v25, v4

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MediaDataController;->processLoadedMenuBots(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;JIZ)V

    goto :goto_20

    :cond_3d
    move-object v14, v4

    move-object v11, v5

    :goto_20
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v5, v11

    move-object v4, v14

    goto/16 :goto_c

    :cond_3e
    move-object v11, v5

    .line 1103
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    if-eqz v0, :cond_41

    .line 1104
    move-object v9, v7

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1106
    :try_start_0
    sput-object v9, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1107
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_21

    :catch_0
    move-exception v0

    .line 1109
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1112
    :goto_21
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_22

    :catch_1
    move-exception v0

    .line 1114
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1117
    :goto_22
    :try_start_2
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3f

    .line 1118
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 1119
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 1120
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 1121
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 1122
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1123
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    const/4 v10, 0x1

    .line 1125
    new-array v1, v10, [Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    const/16 v17, 0x0

    aput-object v0, v1, v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v1

    goto :goto_23

    :catch_2
    move-exception v0

    .line 1129
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :cond_3f
    :goto_23
    if-nez v4, :cond_40

    .line 1132
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_24

    :cond_40
    move-object v5, v11

    :goto_24
    if-nez v4, :cond_37

    .line 1135
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_15

    :cond_41
    move-object/from16 v1, p0

    move-object v5, v11

    .line 1137
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    if-eqz v0, :cond_42

    .line 1138
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;

    .line 1139
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1140
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1141
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_webPage;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto/16 :goto_15

    .line 1142
    :cond_42
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_43

    .line 1143
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto/16 :goto_15

    .line 1144
    :cond_43
    instance-of v0, v7, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    if-eqz v0, :cond_46

    .line 1145
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;

    .line 1146
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v9, :cond_45

    .line 1147
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_44

    goto :goto_26

    :cond_44
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_25

    :cond_45
    :goto_26
    if-eqz v4, :cond_2a

    if-eqz p5, :cond_2a

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$TL_wallPapers;->wallpapers:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v1, v0, v10}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    goto/16 :goto_17

    .line 1155
    :cond_46
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_47

    .line 1156
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1157
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_2a

    if-eqz p5, :cond_2a

    .line 1159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;I)V

    goto/16 :goto_17

    .line 1163
    :cond_47
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_48

    .line 1164
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 1165
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_27

    if-eqz p5, :cond_27

    .line 1167
    new-instance v2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/TLRPC$TL_theme;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_15

    :cond_48
    move-object/from16 v1, p0

    .line 1169
    instance-of v0, v7, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_4e

    .line 1170
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/Vector;

    .line 1171
    iget-object v2, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1172
    iget-object v2, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_27

    .line 1173
    iget-object v9, v0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1174
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_4a

    .line 1175
    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1176
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct {v1, v9, v4, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz p5, :cond_49

    if-eqz v4, :cond_49

    .line 1178
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    move/from16 v19, v2

    const/4 v2, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v14, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1181
    new-instance v2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v9}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_28

    :cond_49
    move/from16 v19, v2

    goto :goto_28

    :cond_4a
    move/from16 v19, v2

    .line 1183
    instance-of v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_4c

    .line 1184
    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1185
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v2

    invoke-direct {v1, v9, v2, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    if-eqz p5, :cond_4b

    if-eqz v2, :cond_4b

    .line 1187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v4, v11, v11}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1190
    new-instance v4, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v9}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4b
    move-object v4, v2

    :cond_4c
    :goto_28
    if-eqz v4, :cond_4d

    goto/16 :goto_15

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v19

    goto :goto_27

    .line 1198
    :cond_4e
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    if-eqz v0, :cond_52

    .line 1199
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 1200
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 1201
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_51

    .line 1202
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1203
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v9

    invoke-direct {v1, v4, v9, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v9

    if-eqz v9, :cond_50

    if-eqz p5, :cond_4f

    .line 1206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v10, 0x1

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v0, v10, v10}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1209
    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2a

    :cond_4f
    const/4 v14, 0x0

    :goto_2a
    move-object v4, v9

    goto/16 :goto_19

    :cond_50
    const/4 v14, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object v4, v9

    goto :goto_29

    :cond_51
    const/4 v14, 0x0

    goto/16 :goto_19

    :cond_52
    const/4 v14, 0x0

    .line 1215
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v0, :cond_55

    .line 1216
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    .line 1217
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2b
    if-ge v10, v9, :cond_54

    .line 1218
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_53

    goto :goto_2c

    :cond_53
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_2b

    :cond_54
    :goto_2c
    if-eqz p5, :cond_2b

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;->gifs:Ljava/util/ArrayList;

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x1

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto/16 :goto_18

    .line 1226
    :cond_55
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_58

    .line 1227
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v4, :cond_57

    .line 1229
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v9, :cond_57

    .line 1230
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_56

    goto :goto_2e

    :cond_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_57
    move-object/from16 v1, p0

    :goto_2e
    if-eqz p5, :cond_2c

    .line 1237
    new-instance v2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_19

    :cond_58
    move-object/from16 v1, p0

    .line 1239
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    if-eqz v0, :cond_5b

    .line 1240
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    .line 1241
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2f
    if-ge v10, v9, :cond_5a

    .line 1242
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_59

    goto :goto_30

    :cond_59
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_2f

    :cond_5a
    :goto_30
    if-eqz p5, :cond_2b

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;->stickers:Ljava/util/ArrayList;

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto/16 :goto_18

    .line 1250
    :cond_5b
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    if-eqz v0, :cond_5e

    .line 1251
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_favedStickers;

    .line 1252
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_31
    if-ge v10, v9, :cond_5d

    .line 1253
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_5c

    goto :goto_32

    :cond_5c
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_5d
    move-object/from16 v1, p0

    :goto_32
    if-eqz p5, :cond_2c

    .line 1259
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_FavedStickers;->stickers:Ljava/util/ArrayList;

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v24, 0x2

    const/16 v26, 0x0

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MediaDataController;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZIZ)V

    goto/16 :goto_19

    :cond_5e
    move-object/from16 v1, p0

    .line 1261
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    if-eqz v0, :cond_60

    .line 1262
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;

    .line 1263
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_2c

    .line 1264
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v9

    invoke-direct {v1, v4, v9, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    if-eqz v4, :cond_5f

    goto/16 :goto_19

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1269
    :cond_60
    instance-of v0, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    if-eqz v0, :cond_2c

    .line 1270
    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    .line 1272
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    .line 1273
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1274
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_63

    if-nez v4, :cond_61

    .line 1276
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_61

    .line 1277
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    :cond_61
    if-nez v4, :cond_62

    .line 1279
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_62

    .line 1280
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v2

    move-object v4, v2

    :cond_62
    if-nez v4, :cond_64

    .line 1282
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_64

    .line 1283
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object v4

    move-object/from16 v29, v3

    move-object v3, v2

    move-object/from16 v2, v29

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileRefController;->getFileReference(Lorg/telegram/tgnet/TLRPC$Document;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$InputFileLocation;[Z[Lorg/telegram/tgnet/TLRPC$InputFileLocation;)[B

    move-result-object v4

    goto :goto_34

    :cond_63
    move-object v0, v14

    .line 1287
    :cond_64
    :goto_34
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    const/16 v18, 0x1

    aget-object v2, v2, v18

    .line 1288
    instance-of v2, v2, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v2, :cond_2c

    .line 1289
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v18

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation;

    .line 1290
    iget-object v2, v2, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_2c

    .line 1291
    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_65

    .line 1293
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 1294
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v9

    iput-object v9, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1295
    new-instance v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;-><init>()V

    iput-object v9, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1296
    iget v10, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 1297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto :goto_35

    .line 1301
    :cond_65
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 1302
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v3, :cond_66

    .line 1303
    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object v3

    iget-wide v9, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v3, v9, v10, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    :cond_66
    :goto_35
    if-eqz v0, :cond_2c

    if-nez v4, :cond_2c

    .line 1307
    new-instance v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 1308
    iget v9, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1309
    iput-object v0, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    iget v2, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v28}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto/16 :goto_19

    :goto_36
    if-eqz v4, :cond_69

    const/16 v17, 0x0

    if-eqz v2, :cond_67

    .line 1318
    aget-object v0, v2, v17

    :goto_37
    move/from16 v3, p6

    goto :goto_38

    :cond_67
    move-object v0, v14

    goto :goto_37

    :goto_38
    invoke-direct {v1, v12, v4, v0, v3}, Lorg/telegram/messenger/FileRefController;->onUpdateObjectReference(Lorg/telegram/messenger/FileRefController$Requester;[BLorg/telegram/tgnet/TLRPC$InputFileLocation;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    move-object v0, v5

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto :goto_3a

    :cond_68
    const/4 v10, 0x1

    goto :goto_39

    :cond_69
    move/from16 v3, p6

    const/16 v17, 0x0

    .line 1322
    invoke-static {v12}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v10, 0x1

    invoke-direct {v1, v0, v10}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    :goto_39
    move-object v0, v5

    :goto_3a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p4

    move v11, v10

    move/from16 v9, v20

    move-object/from16 v10, v22

    goto/16 :goto_6

    .line 1325
    :cond_6a
    iget-object v0, v1, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_6b

    .line 1327
    invoke-direct {v1, v8, v7}, Lorg/telegram/messenger/FileRefController;->putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :cond_6b
    return v16
.end method

.method private onUpdateObjectReference(Lorg/telegram/messenger/FileRefController$Requester;[BLorg/telegram/tgnet/TLRPC$InputFileLocation;Z)Z
    .locals 7

    .line 638
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileref updated for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocationKey(Lorg/telegram/messenger/FileRefController$Requester;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 641
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 642
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    .line 643
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    return v3

    .line 645
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    .line 646
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_2

    return v3

    .line 652
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 653
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v6, :cond_4

    .line 654
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_3

    .line 655
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_3

    return v2

    .line 658
    :cond_3
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_0

    .line 659
    :cond_4
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v6, :cond_6

    .line 660
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_5

    .line 661
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_5

    return v2

    .line 664
    :cond_5
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 667
    :cond_6
    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_7

    return v3

    .line 671
    :cond_7
    aget-object p2, v0, v4

    check-cast p2, Ljava/util/ArrayList;

    .line 672
    invoke-virtual {p2, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    move p4, v3

    .line 675
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 676
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    move p4, v2

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    if-eqz p4, :cond_34

    .line 681
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance p1, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p3, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 684
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v6, 0x2

    if-lt v0, v6, :cond_14

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_14

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v0, :cond_14

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-nez v0, :cond_b

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v0, :cond_14

    .line 685
    :cond_b
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 686
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_c

    return v3

    .line 692
    :cond_c
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v1, :cond_e

    .line 693
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_d

    .line 695
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_d

    return v2

    .line 698
    :cond_d
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_2

    .line 699
    :cond_e
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v1, :cond_10

    .line 700
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_f

    .line 702
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_f

    return v2

    .line 705
    :cond_f
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    goto :goto_2

    :cond_10
    move-object p1, v5

    .line 708
    :goto_2
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    .line 710
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_11

    return v3

    .line 714
    :cond_11
    aget-object p2, v0, v4

    check-cast p2, Ljava/util/ArrayList;

    .line 715
    invoke-virtual {p2, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    move p4, v3

    .line 718
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_13

    .line 719
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    move p4, v2

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_13
    if-eqz p4, :cond_34

    .line 724
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance p1, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p3, v0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 727
    :cond_14
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_19

    .line 728
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 729
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v0, :cond_16

    .line 730
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_15

    .line 731
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_15

    return v2

    .line 734
    :cond_15
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_4

    .line 735
    :cond_16
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v0, :cond_18

    .line 736
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_17

    .line 737
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_17

    return v2

    .line 740
    :cond_17
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 742
    :cond_18
    :goto_4
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 743
    :cond_19
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_1e

    .line 744
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    .line 745
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v0, :cond_1b

    .line 746
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p4, :cond_1a

    .line 747
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_1a

    return v2

    .line 750
    :cond_1a
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_5

    .line 751
    :cond_1b
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v0, :cond_1d

    .line 752
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p4, :cond_1c

    .line 753
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v2

    .line 756
    :cond_1c
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 758
    :cond_1d
    :goto_5
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/messenger/FileRefController$Requester;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 759
    :cond_1e
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v0, :cond_20

    .line 760
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz p4, :cond_1f

    .line 761
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_1f

    return v2

    .line 764
    :cond_1f
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 765
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda12;

    invoke-direct {p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 768
    :cond_20
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v0, :cond_22

    .line 769
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz p4, :cond_21

    .line 770
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_21

    return v2

    .line 773
    :cond_21
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 774
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda13;

    invoke-direct {p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 777
    :cond_22
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    if-eqz v0, :cond_24

    .line 778
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    if-eqz p4, :cond_23

    .line 779
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_23

    return v2

    .line 782
    :cond_23
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 783
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda14;

    invoke-direct {p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 786
    :cond_24
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v0, :cond_26

    .line 787
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz p4, :cond_25

    .line 788
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_25

    return v2

    .line 791
    :cond_25
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 792
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda15;

    invoke-direct {p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 795
    :cond_26
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_2b

    .line 796
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p3

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 797
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz v1, :cond_28

    .line 798
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz p4, :cond_27

    .line 799
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_27

    return v2

    .line 802
    :cond_27
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_6

    .line 803
    :cond_28
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz v1, :cond_2a

    .line 804
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz p4, :cond_29

    .line 805
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p4, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p4

    if-eqz p4, :cond_29

    return v2

    .line 808
    :cond_29
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 810
    :cond_2a
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v3

    check-cast p1, Lorg/telegram/tgnet/RequestDelegate;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    .line 811
    :cond_2b
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    instance-of v0, v0, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_34

    .line 812
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetargs(Lorg/telegram/messenger/FileRefController$Requester;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p3, :cond_2e

    if-eqz p4, :cond_2c

    .line 816
    iget-object p1, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v2

    .line 819
    :cond_2c
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2d

    .line 820
    iget-object p1, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_2d
    move-object p1, v5

    .line 822
    :goto_7
    iput-object p3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 823
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_32

    .line 824
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_2e
    if-eqz p4, :cond_2f

    .line 827
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p3, p2}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_2f

    return v2

    .line 830
    :cond_2f
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_30

    .line 831
    iget-object p3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_30
    move-object p3, v5

    .line 833
    :goto_8
    iget-object p4, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fgetlocation(Lorg/telegram/messenger/FileRefController$Requester;)Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-result-object p1

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    iput-object p2, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 834
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_31

    .line 835
    iget-object p1, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    :cond_31
    move-object p1, p3

    .line 838
    :cond_32
    :goto_9
    iput-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 839
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_33

    .line 840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "debug_loading: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reference updated resume download"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_33
    const/4 p1, -0x1

    .line 842
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :cond_34
    :goto_a
    return v3
.end method

.method private putReponseToCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1857
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    if-nez v0, :cond_0

    .line 1859
    new-instance v0, Lorg/telegram/messenger/FileRefController$CachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileRefController$CachedResult;-><init>(Lorg/telegram/messenger/FileRefController-IA;)V

    .line 1860
    invoke-static {v0, p2}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fputresponse(Lorg/telegram/messenger/FileRefController$CachedResult;Lorg/telegram/tgnet/TLObject;)V

    .line 1861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fputfirstQueryTime(Lorg/telegram/messenger/FileRefController$CachedResult;J)V

    .line 1862
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private requestReferenceFromServer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 436
    instance-of v0, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 437
    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    .line 438
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 442
    :cond_0
    new-instance p4, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda16;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p4}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->requestReference(Lorg/telegram/ui/Stories/StoriesController$BotPreview;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 447
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_2

    .line 448
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 449
    new-instance p4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;-><init>()V

    .line 450
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 451
    iget-object v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 455
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    if-eqz v0, :cond_3

    .line 456
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_getPremiumPromo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_getPremiumPromo;-><init>()V

    .line 457
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 466
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_4

    .line 467
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;-><init>()V

    .line 468
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAvailableReactions;->hash:I

    .line 469
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 470
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v0, :cond_5

    .line 471
    check-cast p1, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    .line 472
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;-><init>()V

    .line 473
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_users_getFullUser;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 474
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 475
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    if-eqz v0, :cond_6

    .line 476
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 477
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;-><init>()V

    .line 478
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachMenuBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 479
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 480
    :cond_6
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_a

    .line 481
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 482
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getChannelId()J

    move-result-wide v0

    .line 483
    iget-boolean p4, p1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-eqz p4, :cond_7

    .line 484
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;-><init>()V

    .line 485
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 486
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 488
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 489
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;-><init>()V

    .line 490
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result v0

    iput v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->shortcut_id:I

    .line 491
    iget v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->flags:I

    or-int/2addr v0, v2

    iput v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->flags:I

    .line 492
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_8
    cmp-long p4, v0, v3

    if-eqz p4, :cond_9

    .line 495
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 496
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 497
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 500
    :cond_9
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 501
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 504
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v0, :cond_b

    .line 505
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 506
    new-instance p4, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;-><init>()V

    .line 507
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;-><init>()V

    .line 508
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->id:J

    .line 509
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaper;->access_hash:J

    .line 510
    iput-object v0, p4, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    .line 511
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 512
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_c

    .line 513
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 514
    new-instance p4, Lorg/telegram/tgnet/tl/TL_account$getTheme;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_account$getTheme;-><init>()V

    .line 515
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;-><init>()V

    .line 516
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;->id:J

    .line 517
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputTheme;->access_hash:J

    .line 518
    iput-object v0, p4, Lorg/telegram/tgnet/tl/TL_account$getTheme;->theme:Lorg/telegram/tgnet/TLRPC$InputTheme;

    .line 519
    const-string p1, "android"

    iput-object p1, p4, Lorg/telegram/tgnet/tl/TL_account$getTheme;->format:Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 521
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_d

    .line 522
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 523
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 524
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 525
    iput v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 526
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 527
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_e

    .line 528
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 529
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    .line 530
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 532
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_11

    .line 533
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 534
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_chat;

    if-eqz p4, :cond_f

    .line 535
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;-><init>()V

    .line 536
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;->id:Ljava/util/ArrayList;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 538
    :cond_f
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz p4, :cond_10

    .line 539
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;-><init>()V

    .line 540
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_10
    return-void

    .line 543
    :cond_11
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 544
    check-cast p1, Ljava/lang/String;

    .line 545
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 546
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 547
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getWallPapers;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getWallPapers;-><init>()V

    .line 548
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 550
    :cond_12
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->wallpaperWaiters:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 551
    :cond_13
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 552
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 553
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    .line 554
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 556
    :cond_14
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->savedGifsWaiters:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 557
    :cond_15
    const-string/jumbo v0, "recent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 558
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 559
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;-><init>()V

    .line 560
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 562
    :cond_16
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->recentStickersWaiter:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 563
    :cond_17
    const-string v0, "fav"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 564
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 565
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFavedStickers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFavedStickers;-><init>()V

    .line 566
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/FileRefController;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 568
    :cond_18
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->favStickersWaiter:Ljava/util/ArrayList;

    new-instance p4, Lorg/telegram/messenger/FileRefController$Waiter;

    invoke-direct {p4, p2, p3}, Lorg/telegram/messenger/FileRefController$Waiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 569
    :cond_19
    const-string/jumbo v0, "update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 570
    new-instance p1, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/exteragram/messenger/updater/UpdaterUtils;->getAppUpdate(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 571
    :cond_1a
    const-string v0, "avatar_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 572
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v5, v3

    const/16 p4, 0x50

    if-lez p1, :cond_1b

    .line 574
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;-><init>()V

    .line 575
    iput p4, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->limit:I

    .line 576
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->offset:I

    .line 577
    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->max_id:J

    .line 578
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_photos_getUserPhotos;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 579
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 581
    :cond_1b
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 582
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterChatPhotos;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 583
    iput p4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 584
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 585
    const-string p4, ""

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 587
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 589
    :cond_1c
    const-string/jumbo v0, "sent_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 590
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 591
    array-length v0, p1

    const/4 v5, 0x3

    if-lt v0, v5, :cond_1e

    .line 592
    aget-object p4, p1, v2

    invoke-static {p4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p4, v0, v3

    const/4 v2, 0x2

    if-eqz p4, :cond_1d

    .line 594
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 595
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 596
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 599
    :cond_1d
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 600
    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 604
    :cond_1e
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 607
    :cond_1f
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 609
    :cond_20
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_21

    .line 610
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 611
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 612
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 613
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 614
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 615
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 616
    :cond_21
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_22

    .line 617
    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 618
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 619
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 620
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 621
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 622
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 623
    :cond_22
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_23

    .line 624
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 625
    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 626
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/FileRefController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 628
    :cond_23
    invoke-direct {p0, p4, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void
.end method

.method private sendErrorToObject([Ljava/lang/Object;I)V
    .locals 4

    const/4 p2, 0x0

    .line 849
    aget-object v0, p1, p2

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 850
    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 851
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_b

    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v0, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 856
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v1, :cond_2

    :cond_1
    aget-object v1, p1, v2

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_2

    .line 857
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 858
    iget-object p1, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 860
    iget-object p2, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, v1, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileRefController;Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;[Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 863
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v1, :cond_4

    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v1, :cond_5

    .line 864
    :cond_4
    new-instance p2, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/FileRefController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileRefController;[Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 865
    :cond_5
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v1, :cond_6

    .line 866
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    return-void

    .line 868
    :cond_6
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v1, :cond_7

    .line 869
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    return-void

    .line 871
    :cond_7
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    if-eqz v1, :cond_8

    .line 872
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    return-void

    .line 874
    :cond_8
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v1, :cond_9

    .line 875
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    return-void

    .line 877
    :cond_9
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v1, :cond_a

    .line 878
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 879
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    aget-object p1, p1, v2

    check-cast p1, Lorg/telegram/tgnet/RequestDelegate;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 881
    :cond_a
    aget-object p1, p1, v2

    instance-of v0, p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_b

    .line 882
    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    .line 883
    iput-boolean p2, p1, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug_loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reference can\'t update: fail operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1, p2, p2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :cond_b
    return-void
.end method

.method private varargs updateFileReferenceFromCache([BLorg/telegram/tgnet/TLRPC$InputFileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4

    const/4 p4, 0x0

    .line 1666
    aget-object v0, p5, p4

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1667
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    .line 1668
    iget-object p2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    return v2

    .line 1670
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    if-eqz v1, :cond_1

    return p4

    .line 1672
    :cond_1
    array-length v1, p5

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    aget-object v1, p5, v2

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v1, :cond_3

    :cond_2
    return p4

    .line 1674
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v1, :cond_7

    .line 1675
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 1676
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p3, :cond_5

    .line 1677
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 1678
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_4

    return p4

    .line 1681
    :cond_4
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1682
    :cond_5
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p3, :cond_1f

    .line 1683
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 1684
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_6

    return p4

    .line 1687
    :cond_6
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    goto/16 :goto_3

    .line 1689
    :cond_7
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v1, :cond_b

    .line 1690
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    .line 1691
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p3, :cond_9

    .line 1692
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 1693
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_8

    return p4

    .line 1696
    :cond_8
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1697
    :cond_9
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p3, :cond_1f

    .line 1698
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 1699
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_a

    return p4

    .line 1702
    :cond_a
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    goto/16 :goto_3

    .line 1704
    :cond_b
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz v1, :cond_d

    .line 1705
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    .line 1706
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p2

    if-eqz p2, :cond_c

    return p4

    .line 1709
    :cond_c
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1710
    :cond_d
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz v1, :cond_f

    .line 1711
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    .line 1712
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p2

    if-eqz p2, :cond_e

    return p4

    .line 1715
    :cond_e
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1716
    :cond_f
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    if-eqz v1, :cond_11

    .line 1717
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    .line 1718
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p2

    if-eqz p2, :cond_10

    return p4

    .line 1721
    :cond_10
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1722
    :cond_11
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz v1, :cond_13

    .line 1723
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    .line 1724
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p2

    if-eqz p2, :cond_12

    return p4

    .line 1727
    :cond_12
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1728
    :cond_13
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v1, :cond_17

    .line 1729
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 1730
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz p3, :cond_15

    .line 1731
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    .line 1732
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_14

    return p4

    .line 1735
    :cond_14
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto/16 :goto_3

    .line 1736
    :cond_15
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz p3, :cond_1f

    .line 1737
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    .line 1738
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p3

    if-eqz p3, :cond_16

    return p4

    .line 1741
    :cond_16
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    goto/16 :goto_3

    .line 1743
    :cond_17
    aget-object p5, p5, v2

    instance-of v0, p5, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_1f

    .line 1744
    check-cast p5, Lorg/telegram/messenger/FileLoadOperation;

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    .line 1748
    iget-object p1, p5, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p1

    if-eqz p1, :cond_18

    return p4

    .line 1751
    :cond_18
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_19

    .line 1752
    iget-object p1, p5, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_19
    move-object p1, v0

    .line 1754
    :goto_0
    iput-object p2, p5, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 1755
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_1e

    .line 1756
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1759
    :cond_1a
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/FileRefController;->isSameReference([B[B)Z

    move-result p2

    if-eqz p2, :cond_1b

    return p4

    .line 1762
    :cond_1b
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1c

    .line 1763
    iget-object p2, p5, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1c
    move-object p2, v0

    .line 1765
    :goto_1
    iget-object p4, p5, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 1766
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_1d

    .line 1767
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    move-object p1, p2

    .line 1770
    :cond_1e
    :goto_2
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_1f

    .line 1771
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "debug_loading: from fileref cache updated fileref from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1f
    :goto_3
    return v2
.end method


# virtual methods
.method public varargs applyCachedFileReference(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 9

    .line 1801
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->getLocationAndKey(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1805
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 1806
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1807
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController;->getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    return v1

    .line 1813
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1814
    check-cast p1, Ljava/lang/String;

    .line 1815
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1817
    :cond_2
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1819
    :cond_3
    const-string/jumbo v0, "recent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1821
    :cond_4
    const-string v0, "fav"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 1823
    :cond_5
    const-string/jumbo v0, "update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v5

    .line 1828
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1830
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->getFileReferenceFromResponse(Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1832
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [B

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-object v3, p0

    move-object v6, v4

    move-object v7, v5

    move-object v5, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->updateFileReferenceFromCache([BLorg/telegram/tgnet/TLRPC$InputFileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_8
    move-object v8, p2

    goto :goto_1

    .line 1836
    :goto_2
    invoke-direct {p0, v6}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object v5, v6

    const/4 v6, 0x0

    .line 1838
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->getFileReferenceFromResponse(Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1840
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [B

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    move-object v3, p0

    move-object v6, v4

    move-object v7, v5

    move-object v5, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileRefController;->updateFileReferenceFromCache([BLorg/telegram/tgnet/TLRPC$InputFileLocation;Lorg/telegram/tgnet/TLRPC$InputFileLocation;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    return v1
.end method

.method public varargs getLocationAndKey(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Lorg/telegram/tgnet/TLRPC$InputFileLocation;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    aget-object p2, p2, v0

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 155
    :cond_0
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v1, :cond_1

    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    return-object v2

    .line 158
    :cond_1
    instance-of v1, p2, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    if-eqz v1, :cond_4

    .line 159
    check-cast p2, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    .line 160
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    .line 161
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 162
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 163
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botstory_doc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 164
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_3

    .line 165
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 166
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 167
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botstory_photo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 169
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 170
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botstory_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 172
    :cond_4
    instance-of v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    if-eqz v1, :cond_5

    .line 173
    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    .line 174
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 175
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 176
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "story_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 177
    :cond_5
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    const-string/jumbo v3, "photo_"

    const-string v4, "file_"

    if-eqz v1, :cond_7

    .line 178
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 179
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p2, :cond_6

    .line 180
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 181
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 182
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 183
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 184
    :cond_6
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p2, :cond_1a

    .line 185
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 186
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 187
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 188
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 190
    :cond_7
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v1, :cond_8

    .line 191
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 192
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 193
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 194
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 195
    :cond_8
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v1, :cond_9

    .line 196
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 197
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 198
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 199
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 200
    :cond_9
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v1, :cond_e

    .line 201
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 202
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz v1, :cond_a

    .line 203
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 204
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 205
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 206
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 207
    :cond_a
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz v1, :cond_b

    .line 208
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 209
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 210
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 211
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 212
    :cond_b
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v1, :cond_1a

    .line 213
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    .line 214
    instance-of p1, p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    goto/16 :goto_0

    .line 216
    :cond_c
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 217
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 218
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p2, :cond_d

    .line 219
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 220
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 221
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 222
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 223
    :cond_d
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p2, :cond_1a

    .line 224
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 225
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 226
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 227
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 231
    :cond_e
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz p1, :cond_10

    .line 232
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    .line 233
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    if-eqz p2, :cond_f

    .line 234
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    .line 235
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 236
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 237
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 238
    :cond_f
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    if-eqz p2, :cond_1a

    .line 239
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    .line 240
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 241
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 242
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 244
    :cond_10
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    if-eqz p1, :cond_11

    .line 245
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    .line 246
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 247
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 248
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 249
    :cond_11
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    if-eqz p1, :cond_12

    .line 250
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;

    .line 251
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 252
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 253
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_saveRecentSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 254
    :cond_12
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    if-eqz p1, :cond_13

    .line 255
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;

    .line 256
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 257
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 258
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_stickers_addStickerToSet;->sticker:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 259
    :cond_13
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    if-eqz p1, :cond_14

    .line 260
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;

    .line 261
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 262
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 263
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_faveSticker;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 264
    :cond_14
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz p1, :cond_16

    .line 265
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    .line 266
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    if-eqz p2, :cond_15

    .line 267
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    .line 268
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 269
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 270
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 271
    :cond_15
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    if-eqz p2, :cond_1a

    .line 272
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    .line 273
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    .line 274
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 275
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 277
    :cond_16
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    if-eqz p1, :cond_17

    .line 278
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    .line 279
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 280
    :cond_17
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    if-eqz p1, :cond_18

    .line 281
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    .line 282
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 283
    :cond_18
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    if-eqz p1, :cond_19

    .line 284
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    .line 285
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 286
    :cond_19
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz p1, :cond_1a

    .line 287
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    .line 288
    new-instance p1, Landroid/util/Pair;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatar_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1a
    :goto_0
    return-object v2
.end method

.method public varargs requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    .line 295
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start loading request reference parent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileRefController;->getObjectString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 298
    :cond_0
    aget-object v0, p2, v1

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 299
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    .line 300
    check-cast p1, Ljava/util/ArrayList;

    .line 301
    iget-object v2, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    .line 303
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    .line 304
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v0, v7, v4

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    move-object v5, p0

    goto/16 :goto_6

    .line 311
    :cond_3
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 312
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    .line 313
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    .line 314
    check-cast p1, Ljava/util/ArrayList;

    .line 315
    iget-object v5, p0, Lorg/telegram/messenger/FileRefController;->multiMediaCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v5, v1

    :goto_3
    if-ge v5, p2, :cond_2

    .line 317
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 318
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_4

    .line 322
    :cond_4
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v0, v8, v4

    invoke-virtual {p0, v7, v8}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 326
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileRefController;->getLocationAndKey(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_6

    .line 328
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 331
    :cond_6
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 332
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 334
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_7

    .line 335
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 336
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v5

    if-gez v5, :cond_7

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_7

    move-object p1, v0

    .line 340
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/FileRefController;->getKeyForParentObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    .line 343
    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/FileRefController;->sendErrorToObject([Ljava/lang/Object;I)V

    return-void

    .line 347
    :cond_8
    new-instance v0, Lorg/telegram/messenger/FileRefController$Requester;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/FileRefController$Requester;-><init>(Lorg/telegram/messenger/FileRefController-IA;)V

    .line 348
    invoke-static {v0, p2}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fputargs(Lorg/telegram/messenger/FileRefController$Requester;[Ljava/lang/Object;)V

    .line 349
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fputlocation(Lorg/telegram/messenger/FileRefController$Requester;Lorg/telegram/tgnet/TLRPC$InputFileLocation;)V

    .line 350
    invoke-static {v0, v6}, Lorg/telegram/messenger/FileRefController$Requester;->-$$Nest$fputlocationKey(Lorg/telegram/messenger/FileRefController$Requester;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_9

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v1, p0, Lorg/telegram/messenger/FileRefController;->locationRequester:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    .line 359
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v2, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_a

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v4, p0, Lorg/telegram/messenger/FileRefController;->parentRequester:Ljava/util/HashMap;

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 367
    :cond_a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v1, v3, :cond_b

    goto/16 :goto_2

    .line 373
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 374
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 375
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    .line 377
    :cond_c
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_5

    .line 379
    :cond_d
    const-string/jumbo v1, "recent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    .line 381
    :cond_e
    const-string v1, "fav"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    .line 383
    :cond_f
    const-string/jumbo v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    move-object v1, v6

    .line 388
    :goto_5
    invoke-direct {p0}, Lorg/telegram/messenger/FileRefController;->cleanupCache()V

    .line 389
    invoke-direct {p0, v1}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 391
    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 392
    iget-object v0, v5, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    move-object v5, p0

    .line 397
    invoke-direct {p0, v7}, Lorg/telegram/messenger/FileRefController;->getCachedResponse(Ljava/lang/String;)Lorg/telegram/messenger/FileRefController$CachedResult;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 399
    invoke-static {v0}, Lorg/telegram/messenger/FileRefController$CachedResult;->-$$Nest$fgetresponse(Lorg/telegram/messenger/FileRefController$CachedResult;)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/messenger/FileRefController;->onRequestComplete(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 400
    iget-object v0, v5, Lorg/telegram/messenger/FileRefController;->responseCache:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_12
    :goto_6
    return-void

    .line 406
    :cond_13
    :goto_7
    invoke-direct {p0, p1, v6, v7, p2}, Lorg/telegram/messenger/FileRefController;->requestReferenceFromServer(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
