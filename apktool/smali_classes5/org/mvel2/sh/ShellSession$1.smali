.class Lorg/mvel2/sh/ShellSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/sh/ShellSession;->_exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/sh/ShellSession;

.field final synthetic val$inStream:Ljava/io/InputStream;

.field final synthetic val$runState:Lorg/mvel2/sh/ShellSession$RunState;

.field final synthetic val$sysPrintStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lorg/mvel2/sh/ShellSession;Ljava/io/InputStream;Ljava/io/PrintStream;Lorg/mvel2/sh/ShellSession$RunState;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    iput-object p2, p0, Lorg/mvel2/sh/ShellSession$1;->val$inStream:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/mvel2/sh/ShellSession$1;->val$sysPrintStream:Ljava/io/PrintStream;

    iput-object p4, p0, Lorg/mvel2/sh/ShellSession$1;->val$runState:Lorg/mvel2/sh/ShellSession$RunState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x19

    .line 211
    new-array v0, v0, [B

    .line 216
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mvel2/sh/ShellSession$1;->val$inStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 218
    iget-object v3, p0, Lorg/mvel2/sh/ShellSession$1;->val$sysPrintStream:Ljava/io/PrintStream;

    aget-byte v4, v0, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v1, p0, Lorg/mvel2/sh/ShellSession$1;->val$sysPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lorg/mvel2/sh/ShellSession$1;->val$runState:Lorg/mvel2/sh/ShellSession$RunState;

    invoke-virtual {v1}, Lorg/mvel2/sh/ShellSession$RunState;->isRunning()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 230
    :catch_0
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$1;->val$sysPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 232
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v0}, Lorg/mvel2/sh/ShellSession;->access$000(Lorg/mvel2/sh/ShellSession;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v0}, Lorg/mvel2/sh/ShellSession;->access$300(Lorg/mvel2/sh/ShellSession;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "$PROMPT"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v2}, Lorg/mvel2/sh/ShellSession;->access$400(Lorg/mvel2/sh/ShellSession;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mvel2/templates/TemplateRuntime;->eval(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mvel2/sh/ShellSession;->access$202(Lorg/mvel2/sh/ShellSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/mvel2/sh/ShellSession;->access$102(Lorg/mvel2/sh/ShellSession;I)I

    .line 234
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v0}, Lorg/mvel2/sh/ShellSession;->access$500(Lorg/mvel2/sh/ShellSession;)Ljava/io/PrintStream;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v1}, Lorg/mvel2/sh/ShellSession;->access$200(Lorg/mvel2/sh/ShellSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    goto :goto_2

    .line 237
    :cond_3
    iget-object v0, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v0}, Lorg/mvel2/sh/ShellSession;->access$500(Lorg/mvel2/sh/ShellSession;)Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v1}, Lorg/mvel2/sh/ShellSession;->access$100(Lorg/mvel2/sh/ShellSession;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/mvel2/sh/ShellSession$1;->this$0:Lorg/mvel2/sh/ShellSession;

    invoke-static {v3}, Lorg/mvel2/sh/ShellSession;->access$600(Lorg/mvel2/sh/ShellSession;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/mvel2/sh/ShellSession;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    :goto_2
    return-void
.end method
