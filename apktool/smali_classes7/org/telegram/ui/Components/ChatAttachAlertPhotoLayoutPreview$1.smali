.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->header:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
