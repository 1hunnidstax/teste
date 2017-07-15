.class final Lcom/vungle/publisher/ajm$a;
.super Lcom/vungle/publisher/ahs$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/amb;

.field final synthetic b:Lcom/vungle/publisher/ajm;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajm;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vungle/publisher/ajm$a;->b:Lcom/vungle/publisher/ajm;

    invoke-direct {p0}, Lcom/vungle/publisher/ahs$a;-><init>()V

    .line 43
    new-instance v0, Lcom/vungle/publisher/amb;

    invoke-direct {v0}, Lcom/vungle/publisher/amb;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ajm$a;->a:Lcom/vungle/publisher/amb;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;
    .locals 1

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/vungle/publisher/aie;->d()V

    .line 59
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/vungle/publisher/ajm;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    new-instance v2, Lcom/vungle/publisher/ajr;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/vungle/publisher/ajr;-><init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/ahs$a;J)V

    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ajm$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/ajm$a;->a:Lcom/vungle/publisher/amb;

    invoke-virtual {v0}, Lcom/vungle/publisher/amb;->b()V

    .line 65
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/ajm$a;->a:Lcom/vungle/publisher/amb;

    invoke-virtual {v0}, Lcom/vungle/publisher/amb;->c()Z

    move-result v0

    return v0
.end method
