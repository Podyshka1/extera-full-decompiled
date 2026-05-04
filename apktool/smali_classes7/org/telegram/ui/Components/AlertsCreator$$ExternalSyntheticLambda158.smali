.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[I

.field public final synthetic f$10:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$12:J

.field public final synthetic f$13:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$14:[Landroid/util/SparseArray;

.field public final synthetic f$15:Lorg/telegram/messenger/MessageObject$GroupedMessages;

.field public final synthetic f$16:I

.field public final synthetic f$17:I

.field public final synthetic f$18:Ljava/lang/Runnable;

.field public final synthetic f$19:Ljava/lang/Runnable;

.field public final synthetic f$2:I

.field public final synthetic f$20:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public final synthetic f$5:I

.field public final synthetic f$6:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$7:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>([I[IILorg/telegram/tgnet/TLObject;[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;IILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$0:[I

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$1:[I

    iput p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$4:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$5:I

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$6:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$7:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p11, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$10:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p12, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$11:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-wide p13, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$12:J

    iput-object p15, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$13:Lorg/telegram/messenger/MessageObject;

    move-object/from16 p1, p16

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$14:[Landroid/util/SparseArray;

    move-object/from16 p1, p17

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$15:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move/from16 p1, p18

    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$16:I

    move/from16 p1, p19

    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$17:I

    move-object/from16 p1, p20

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$18:Ljava/lang/Runnable;

    move-object/from16 p1, p21

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$19:Ljava/lang/Runnable;

    move-object/from16 p1, p22

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$20:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$0:[I

    iget-object v2, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$1:[I

    iget v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$2:I

    iget-object v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$4:[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v6, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$5:I

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$6:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$7:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v9, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$8:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$10:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$11:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v13, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$12:J

    iget-object v15, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$13:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$14:[Landroid/util/SparseArray;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$15:Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-object/from16 v18, v1

    iget v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$16:I

    move/from16 v19, v1

    iget v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$17:I

    move/from16 v20, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$18:Ljava/lang/Runnable;

    move-object/from16 v21, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$19:Ljava/lang/Runnable;

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda158;->f$20:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v23, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    invoke-static/range {v1 .. v22}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$dU_8Yeta6QNmiIXhtz3DPnbIoGc([I[IILorg/telegram/tgnet/TLObject;[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;IILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
