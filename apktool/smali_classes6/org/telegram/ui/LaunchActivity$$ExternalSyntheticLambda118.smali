.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Runnable;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$2:Ljava/lang/Integer;

    iput-wide p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$4:Ljava/lang/Runnable;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$5:Ljava/lang/String;

    iput p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$6:I

    iput p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$7:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$2:Ljava/lang/Integer;

    iget-wide v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$3:J

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$4:Ljava/lang/Runnable;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$5:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$6:I

    iget v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda118;->f$7:I

    move-object v9, p1

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$VsHmTnKwgdP_GPHAME_9nxrfjhk(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Runnable;Ljava/lang/String;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
