.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

.field final synthetic val$selectedPhotos:Ljava/util/HashMap;

.field final synthetic val$selectedPhotosOrder:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->val$selectedPhotos:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->val$selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionButtonPressed(ZZII)V
    .locals 1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->val$selectedPhotos:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->val$selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-static {p1, p4, v0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$msendSelectedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    :cond_0
    return-void
.end method

.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)Z

    move-result v0

    return v0
.end method

.method public onCaptionChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onOpenInPressed()V
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    return-void
.end method

.method public selectedPhotosChanged()V
    .locals 0

    return-void
.end method
