.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ContentPreviewViewer;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->$r8$lambda$FOSzuPAabnDuIYQU3U7AOqf8W4Y(Lorg/telegram/ui/ContentPreviewViewer;Landroid/graphics/Bitmap;)V

    return-void
.end method
