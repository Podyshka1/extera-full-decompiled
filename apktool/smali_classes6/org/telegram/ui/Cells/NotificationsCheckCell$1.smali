.class Lorg/telegram/ui/Cells/NotificationsCheckCell$1;
.super Lorg/telegram/ui/Components/Switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/NotificationsCheckCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell$1;->this$0:Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected processColor(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell$1;->this$0:Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->processColor(I)I

    move-result p1

    return p1
.end method
