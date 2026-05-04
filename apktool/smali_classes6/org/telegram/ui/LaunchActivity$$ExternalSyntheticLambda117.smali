.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

.field public final synthetic f$12:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Ljava/lang/Runnable;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/Integer;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;IILorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$4:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$5:Ljava/lang/Integer;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$6:Ljava/lang/Runnable;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$8:Ljava/lang/Integer;

    iput p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$9:I

    iput p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$10:I

    iput-object p12, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$11:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iput-object p13, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$12:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget v2, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$1:I

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$3:Ljava/lang/Long;

    iget-object v5, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$4:Ljava/lang/Integer;

    iget-object v6, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$5:Ljava/lang/Integer;

    iget-object v7, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$6:Ljava/lang/Runnable;

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$7:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$8:Ljava/lang/Integer;

    iget v10, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$9:I

    iget v11, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$10:I

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$11:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda117;->f$12:Ljava/lang/Runnable;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$aJcOwAo49M4hUTCehdqtj8kD6is(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;IILorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
