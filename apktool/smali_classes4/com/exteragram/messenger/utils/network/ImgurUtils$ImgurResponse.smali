.class public Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/utils/network/ImgurUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImgurResponse"
.end annotation


# instance fields
.field public deleteHash:Ljava/lang/String;

.field public imageId:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->imageUrl:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->imageId:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/exteragram/messenger/utils/network/ImgurUtils$ImgurResponse;->deleteHash:Ljava/lang/String;

    return-void
.end method
