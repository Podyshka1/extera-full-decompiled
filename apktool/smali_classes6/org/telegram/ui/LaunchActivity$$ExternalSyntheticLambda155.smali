.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

.field public final synthetic f$13:Ljava/lang/Runnable;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$4:Ljava/lang/Long;

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Ljava/lang/Integer;

.field public final synthetic f$7:Ljava/lang/Runnable;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;IILorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$1:Lorg/telegram/tgnet/TLObject;

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$4:Ljava/lang/Long;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$5:Ljava/lang/Integer;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$6:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$7:Ljava/lang/Runnable;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$9:Ljava/lang/Integer;

    iput p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$10:I

    iput p12, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$11:I

    iput-object p13, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$12:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iput-object p14, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$13:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$1:Lorg/telegram/tgnet/TLObject;

    iget v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$4:Ljava/lang/Long;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$5:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$6:Ljava/lang/Integer;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$7:Ljava/lang/Runnable;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$8:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$9:Ljava/lang/Integer;

    iget v10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$10:I

    iget v11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$11:I

    iget-object v12, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$12:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iget-object v13, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda155;->f$13:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v13}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$z87B_rn6Jwspa_qlTfD4-8T9BR8(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;IILorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Runnable;)V

    return-void
.end method
