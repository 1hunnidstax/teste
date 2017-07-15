.class final Lcom/vungle/publisher/aji$b$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aji$b;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aie;

.field final synthetic b:Lcom/vungle/publisher/aji$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aji$b;Lcom/vungle/publisher/aie;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/vungle/publisher/aji$b$1;->b:Lcom/vungle/publisher/aji$b;

    iput-object p2, p0, Lcom/vungle/publisher/aji$b$1;->a:Lcom/vungle/publisher/aie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vungle/publisher/aji$b$1;->b:Lcom/vungle/publisher/aji$b;

    iget-object v0, v0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    iget-boolean v0, v0, Lcom/vungle/publisher/amc;->a:Z

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$b$1;->a:Lcom/vungle/publisher/aie;

    invoke-interface {v0}, Lcom/vungle/publisher/aie;->d()V

    goto :goto_0
.end method
