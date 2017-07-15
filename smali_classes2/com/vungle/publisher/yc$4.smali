.class final Lcom/vungle/publisher/yc$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yc;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/vungle/publisher/yc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yc;JJ)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vungle/publisher/yc$4;->c:Lcom/vungle/publisher/yc;

    iput-wide p2, p0, Lcom/vungle/publisher/yc$4;->a:J

    iput-wide p4, p0, Lcom/vungle/publisher/yc$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yc$4;->c:Lcom/vungle/publisher/yc;

    iget-object v0, v0, Lcom/vungle/publisher/yc;->f:Lcom/vungle/publisher/aaf;

    iget-wide v2, p0, Lcom/vungle/publisher/yc$4;->a:J

    iget-wide v4, p0, Lcom/vungle/publisher/yc$4;->b:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vungle/publisher/aaf;->a(JJ)Lcom/vungle/publisher/we;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    iget-object v1, p0, Lcom/vungle/publisher/yc$4;->c:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending session end"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
