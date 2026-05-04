.class Lorg/telegram/ui/ChannelColorActivity$4;
.super Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity;->showLimit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 807
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$4;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    iput p7, p0, Lorg/telegram/ui/ChannelColorActivity$4;->val$level:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected channelColorLevelMin()I
    .locals 1

    .line 810
    iget v0, p0, Lorg/telegram/ui/ChannelColorActivity$4;->val$level:I

    return v0
.end method
