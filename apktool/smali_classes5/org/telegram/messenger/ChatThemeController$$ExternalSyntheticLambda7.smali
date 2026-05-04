.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$y6bifoDt_9R1svMWTVvWbYqFHI8(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method
