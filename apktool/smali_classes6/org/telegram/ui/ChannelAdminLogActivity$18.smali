.class Lorg/telegram/ui/ChannelAdminLogActivity$18;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createTextureView(Z)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 1960
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$18;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 0

    .line 1963
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1964
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$18;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
