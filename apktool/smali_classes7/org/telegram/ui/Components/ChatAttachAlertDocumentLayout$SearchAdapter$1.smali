.class Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->-$$Nest$fgetisLoading(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
