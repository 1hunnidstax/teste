.class public final Lcom/vungle/publisher/hl;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/hd$a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cf;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cs$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ck$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gs$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gy$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/vungle/publisher/hl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cf;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ck$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gy$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/hl;->b:Ljavax/inject/Provider;

    .line 35
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/hl;->c:Ljavax/inject/Provider;

    .line 37
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/hl;->d:Ljavax/inject/Provider;

    .line 39
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/hl;->e:Ljavax/inject/Provider;

    .line 41
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/hl;->f:Ljavax/inject/Provider;

    .line 43
    sget-boolean v0, Lcom/vungle/publisher/hl;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/hl;->g:Ljavax/inject/Provider;

    .line 45
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cf;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ck$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gy$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hd;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/hd$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/vungle/publisher/hl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/hl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 8
    check-cast p1, Lcom/vungle/publisher/hd$a;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/hl;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cf;

    iput-object v0, p1, Lcom/vungle/publisher/dl$a;->d:Lcom/vungle/publisher/cf;

    iget-object v0, p0, Lcom/vungle/publisher/hl;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cs$a;

    iput-object v0, p1, Lcom/vungle/publisher/cq$a;->a:Lcom/vungle/publisher/cs$a;

    iget-object v0, p0, Lcom/vungle/publisher/hl;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ck$a;

    iput-object v0, p1, Lcom/vungle/publisher/cq$a;->b:Lcom/vungle/publisher/ck$a;

    iget-object v0, p0, Lcom/vungle/publisher/hl;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gs$a;

    iput-object v0, p1, Lcom/vungle/publisher/hd$a;->c:Lcom/vungle/publisher/gs$a;

    iget-object v0, p0, Lcom/vungle/publisher/hl;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gy$a;

    iput-object v0, p1, Lcom/vungle/publisher/hd$a;->e:Lcom/vungle/publisher/gy$a;

    iget-object v0, p0, Lcom/vungle/publisher/hl;->g:Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/publisher/hd$a;->f:Ljavax/inject/Provider;

    return-void
.end method
