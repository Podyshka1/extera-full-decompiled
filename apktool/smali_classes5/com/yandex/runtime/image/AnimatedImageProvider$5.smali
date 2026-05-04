.class Lcom/yandex/runtime/image/AnimatedImageProvider$5;
.super Lcom/yandex/runtime/image/AnimatedImageProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/runtime/image/AnimatedImageProvider;->fromAnimatedImage(Lcom/yandex/runtime/image/AnimatedImage;)Lcom/yandex/runtime/image/AnimatedImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$image:Lcom/yandex/runtime/image/AnimatedImage;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/runtime/image/AnimatedImage;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/yandex/runtime/image/AnimatedImageProvider$5;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/runtime/image/AnimatedImageProvider$5;->val$image:Lcom/yandex/runtime/image/AnimatedImage;

    invoke-direct {p0}, Lcom/yandex/runtime/image/AnimatedImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/yandex/runtime/image/AnimatedImageProvider$5;->val$id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/yandex/runtime/image/AnimatedImageProvider$5;->val$image:Lcom/yandex/runtime/image/AnimatedImage;

    return-object v0
.end method
