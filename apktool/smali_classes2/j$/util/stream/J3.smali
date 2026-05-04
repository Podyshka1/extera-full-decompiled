.class public final Lj$/util/stream/J3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/util/stream/J3;->a:I

    iput-object p2, p0, Lj$/util/stream/J3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/J3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lj$/util/stream/J3;->a:I

    packed-switch v0, :pswitch_data_0

    .line 869
    :try_start_0
    iget-object v0, p0, Lj$/util/stream/J3;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    iget-object v0, p0, Lj$/util/stream/J3;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 873
    :try_start_1
    iget-object v1, p0, Lj$/util/stream/J3;->c:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/BaseStream;

    invoke-interface {v1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 877
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 880
    :catchall_2
    :goto_0
    throw v0

    .line 840
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lj$/util/stream/J3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 853
    iget-object v0, p0, Lj$/util/stream/J3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_3
    move-exception v0

    .line 844
    :try_start_4
    iget-object v1, p0, Lj$/util/stream/J3;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v1

    .line 848
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 851
    :catchall_5
    :goto_1
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
