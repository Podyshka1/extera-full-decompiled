.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Z

.field public final synthetic f$10:[Landroid/util/SparseArray;

.field public final synthetic f$11:Ljava/lang/Runnable;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject$GroupedMessages;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:[Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(JZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JI[ZI[Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$0:J

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$1:Z

    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$2:I

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$3:Lorg/telegram/messenger/MessageObject;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$4:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$5:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-wide p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$6:J

    iput p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$7:I

    iput-object p11, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$8:[Z

    iput p12, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$9:I

    iput-object p13, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$10:[Landroid/util/SparseArray;

    iput-object p14, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$11:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$0:J

    iget-boolean v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$1:Z

    iget v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$2:I

    iget-object v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$3:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$4:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$5:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$6:J

    iget v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$7:I

    iget-object v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$8:[Z

    iget v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$9:I

    iget-object v13, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$10:[Landroid/util/SparseArray;

    iget-object v14, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda93;->f$11:Ljava/lang/Runnable;

    move-object/from16 v15, p1

    move/from16 v16, p2

    invoke-static/range {v1 .. v16}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$qVOr5vaXyqm5TE54Mq70QVxTm58(JZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JI[ZI[Landroid/util/SparseArray;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
