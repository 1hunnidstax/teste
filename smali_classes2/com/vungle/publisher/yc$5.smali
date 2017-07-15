.class final Lcom/vungle/publisher/yc$5;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yc;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/vungle/publisher/yc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yc;J)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vungle/publisher/yc$5;->b:Lcom/vungle/publisher/yc;

    iput-wide p2, p0, Lcom/vungle/publisher/yc$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yc$5;->b:Lcom/vungle/publisher/yc;

    iget-object v0, v0, Lcom/vungle/publisher/yc;->g:Lcom/vungle/publisher/aal;

    iget-wide v2, p0, Lcom/vungle/publisher/yc$5;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/aal;->a(J)Lcom/vungle/publisher/we;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/yc$5;->b:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending session start"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
