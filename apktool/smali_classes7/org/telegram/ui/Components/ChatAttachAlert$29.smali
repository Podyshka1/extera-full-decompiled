.class Lorg/telegram/ui/Components/ChatAttachAlert$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 4648
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIJZJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 4651
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4652
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-interface/range {v2 .. v14}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIJZJ)V

    return-void

    .line 4653
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v2, :cond_1

    .line 4654
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-interface/range {v3 .. v15}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIJZJ)V

    return-void

    .line 4655
    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/PassportActivity;

    if-eqz v2, :cond_2

    .line 4656
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/PassportActivity;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PassportActivity;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;ZIJZ)V

    :cond_2
    return-void
.end method

.method public didSelectPhotos(Ljava/util/ArrayList;ZIIJ)V
    .locals 9

    .line 4662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4663
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;ZIIJ)V

    return-void

    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    .line 4664
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_1

    .line 4665
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    move-wide v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->didSelectPhotos(Ljava/util/ArrayList;ZIIJ)V

    return-void

    .line 4666
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/PassportActivity;

    if-eqz p2, :cond_2

    .line 4667
    check-cast p1, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {p1, v2, v3, v4}, Lorg/telegram/ui/PassportActivity;->didSelectPhotos(Ljava/util/ArrayList;ZI)V

    :cond_2
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 2

    .line 4673
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4674
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetdocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    return-void

    .line 4675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v1, :cond_1

    .line 4676
    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    return-void

    .line 4677
    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/PassportActivity;

    if-eqz v1, :cond_2

    .line 4678
    check-cast v0, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PassportActivity;->startDocumentSelectActivity()V

    :cond_2
    return-void
.end method

.method public startMusicSelectActivity()V
    .locals 2

    .line 4684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$29;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mopenAudioLayout(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    return-void
.end method
