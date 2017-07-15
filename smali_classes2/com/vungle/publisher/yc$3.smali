.class final Lcom/vungle/publisher/yc$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yc;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/p;

.field final synthetic c:Lcom/vungle/publisher/yc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yc;Ljava/lang/String;Lcom/vungle/publisher/p;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    iput-object p2, p0, Lcom/vungle/publisher/yc$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/publisher/yc$3;->b:Lcom/vungle/publisher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    iget-object v0, v0, Lcom/vungle/publisher/yc;->e:Lcom/vungle/publisher/zz;

    iget-object v1, p0, Lcom/vungle/publisher/yc$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/yc$3;->b:Lcom/vungle/publisher/p;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/zz;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error creating request streaming ad message"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    invoke-virtual {v0}, Lcom/vungle/publisher/yc;->b()V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error requesting streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/yc$3;->c:Lcom/vungle/publisher/yc;

    invoke-virtual {v0}, Lcom/vungle/publisher/yc;->b()V

    goto :goto_0
.end method
