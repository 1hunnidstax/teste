.class public final Lcom/vungle/publisher/aiw;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Lcom/vungle/publisher/aho",
            "<*>;>;",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/vungle/publisher/ahp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Z

.field private final e:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<-",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Lcom/vungle/publisher/aho",
            "<*>;>;+",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/vungle/publisher/ahs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/vungle/publisher/aiw$1;

    invoke-direct {v0}, Lcom/vungle/publisher/aiw$1;-><init>()V

    sput-object v0, Lcom/vungle/publisher/aiw;->d:Lcom/vungle/publisher/aii;

    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;Lcom/vungle/publisher/ahs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;",
            "Lcom/vungle/publisher/aii",
            "<-",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Lcom/vungle/publisher/aho",
            "<*>;>;+",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;",
            "Lcom/vungle/publisher/ahs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/vungle/publisher/aiw;->a:Lcom/vungle/publisher/ahp;

    .line 180
    iput-object p2, p0, Lcom/vungle/publisher/aiw;->e:Lcom/vungle/publisher/aii;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiw;->b:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/aiw;->c:Z

    .line 183
    iput-object p3, p0, Lcom/vungle/publisher/aiw;->f:Lcom/vungle/publisher/ahs;

    .line 184
    return-void
.end method

.method public static a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;",
            "Lcom/vungle/publisher/aii",
            "<-",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Lcom/vungle/publisher/aho",
            "<*>;>;+",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/vungle/publisher/aiw;

    invoke-static {}, Lcom/vungle/publisher/alw;->a()Lcom/vungle/publisher/ahs;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/vungle/publisher/aiw;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;Lcom/vungle/publisher/ahs;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 47
    move-object v2, p1

    check-cast v2, Lcom/vungle/publisher/ahu;

    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iget-object v0, p0, Lcom/vungle/publisher/aiw;->f:Lcom/vungle/publisher/ahs;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs;->a()Lcom/vungle/publisher/ahs$a;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    new-instance v6, Lcom/vungle/publisher/amd;

    invoke-direct {v6}, Lcom/vungle/publisher/amd;-><init>()V

    invoke-virtual {v2, v6}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    invoke-static {}, Lcom/vungle/publisher/alx;->b()Lcom/vungle/publisher/alx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/vungle/publisher/aly;

    if-ne v1, v3, :cond_0

    check-cast v0, Lcom/vungle/publisher/aly;

    move-object v3, v0

    :goto_0
    invoke-static {}, Lcom/vungle/publisher/alj;->a()Lcom/vungle/publisher/ahq;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/alm$1;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/alm$1;-><init>(Lcom/vungle/publisher/ahq;)V

    invoke-static {v1, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahp;)Lcom/vungle/publisher/ahv;

    new-instance v4, Lcom/vungle/publisher/ajf;

    invoke-direct {v4}, Lcom/vungle/publisher/ajf;-><init>()V

    new-instance v0, Lcom/vungle/publisher/aiw$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vungle/publisher/aiw$2;-><init>(Lcom/vungle/publisher/aiw;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/alz;Lcom/vungle/publisher/ajf;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/amd;)V

    iget-object v1, p0, Lcom/vungle/publisher/aiw;->e:Lcom/vungle/publisher/aii;

    new-instance v6, Lcom/vungle/publisher/aiw$3;

    invoke-direct {v6, p0}, Lcom/vungle/publisher/aiw$3;-><init>(Lcom/vungle/publisher/aiw;)V

    invoke-virtual {v3, v6}, Lcom/vungle/publisher/alz;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/publisher/ahp;

    new-instance v6, Lcom/vungle/publisher/aiw$4;

    move-object v7, p0

    move-object v9, v2

    move-object v10, v5

    move-object v12, v0

    invoke-direct/range {v6 .. v13}, Lcom/vungle/publisher/aiw$4;-><init>(Lcom/vungle/publisher/aiw;Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahu;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/aie;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v11, v6}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    new-instance v6, Lcom/vungle/publisher/aiw$5;

    move-object v7, p0

    move-object v8, v5

    move-object v9, v4

    move-object v10, v13

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/vungle/publisher/aiw$5;-><init>(Lcom/vungle/publisher/aiw;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/ajf;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/aie;)V

    invoke-virtual {v2, v6}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    return-void

    :cond_0
    new-instance v3, Lcom/vungle/publisher/aly;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/aly;-><init>(Lcom/vungle/publisher/alz;)V

    goto :goto_0
.end method
