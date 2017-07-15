.class final Lcom/vungle/publisher/aje$a$a;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aje$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final b:Lcom/vungle/publisher/aka;

.field final synthetic c:Lcom/vungle/publisher/aje$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aje$a;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lcom/vungle/publisher/aje$a$a;->c:Lcom/vungle/publisher/aje$a;

    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 293
    invoke-static {}, Lcom/vungle/publisher/aka;->d()Lcom/vungle/publisher/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/aje$a$a;->b:Lcom/vungle/publisher/aka;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vungle/publisher/aje$a$a;->b:Lcom/vungle/publisher/aka;

    iget-object v1, v0, Lcom/vungle/publisher/aka;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vungle/publisher/aio;->b()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aka;->a:Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aje$a$a;->c:Lcom/vungle/publisher/aje$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/aje$a;->a()V

    .line 308
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aje$a$a;->b:Lcom/vungle/publisher/aka;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/aka;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/publisher/ahy; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/aje$a$a;->c:Lcom/vungle/publisher/aje$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/aje$a;->a()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/aje$a$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vungle/publisher/aje$a$a;->c:Lcom/vungle/publisher/aje$a;

    iget-object v0, v0, Lcom/vungle/publisher/aje$a;->a:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 297
    sget v0, Lcom/vungle/publisher/aka;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/aje$a$a;->a(J)V

    .line 298
    return-void
.end method
