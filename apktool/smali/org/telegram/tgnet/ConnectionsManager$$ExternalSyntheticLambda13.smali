.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegateInternal;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/RequestDelegate;

.field public final synthetic f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

.field public final synthetic f$6:Lorg/telegram/tgnet/QuickAckDelegate;

.field public final synthetic f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLObject;

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$2:I

    iput-wide p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$3:J

    iput-object p6, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p7, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iput-object p8, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$6:Lorg/telegram/tgnet/QuickAckDelegate;

    iput-object p9, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iput p10, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$8:I

    iput p11, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$9:I

    iput-boolean p12, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$10:Z

    iput p13, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$11:I

    iput-object p14, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$12:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(JILjava/lang/String;IJJI)V
    .locals 25

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget-object v2, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/TLObject;

    iget v3, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$2:I

    iget-wide v4, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$3:J

    iget-object v6, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v7, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$5:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iget-object v8, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$6:Lorg/telegram/tgnet/QuickAckDelegate;

    iget-object v9, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$7:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iget v10, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$8:I

    iget v11, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$9:I

    iget-boolean v12, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$10:Z

    iget v13, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$11:I

    iget-object v14, v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;->f$12:Ljava/lang/String;

    move-wide/from16 v15, p1

    move/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p5

    move-wide/from16 v20, p6

    move-wide/from16 v22, p8

    move/from16 v24, p10

    invoke-static/range {v1 .. v24}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$BmYwn98nbxCNwIiwvtvGPh8Uubc(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;IJLorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIZILjava/lang/String;JILjava/lang/String;IJJI)V

    return-void
.end method
