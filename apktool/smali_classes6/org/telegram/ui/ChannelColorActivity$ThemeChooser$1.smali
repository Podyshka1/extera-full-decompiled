.class Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$1;->this$0:Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 1761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
