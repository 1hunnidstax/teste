.class Lcom/moat/analytics/mobile/inm/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Lcom/moat/analytics/mobile/inm/ao;

.field private final c:Lcom/moat/analytics/mobile/inm/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/inm/az",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/moat/analytics/mobile/inm/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/inm/bb",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/inm/ax",
            "<TT;>.com/moat/analytics/mobile/inm/ba;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/inm/ax",
            "<TT;>.com/moat/analytics/mobile/inm/ba;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/inm/ax;->a:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/inm/ao;",
            "Lcom/moat/analytics/mobile/inm/az",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/inm/bb",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/ax;->b:Lcom/moat/analytics/mobile/inm/ao;

    iput-object p2, p0, Lcom/moat/analytics/mobile/inm/ax;->c:Lcom/moat/analytics/mobile/inm/az;

    iput-object p3, p0, Lcom/moat/analytics/mobile/inm/ax;->d:Lcom/moat/analytics/mobile/inm/bb;

    new-instance v0, Lcom/moat/analytics/mobile/inm/ay;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/inm/ay;-><init>(Lcom/moat/analytics/mobile/inm/ax;)V

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/inm/ao;->a(Lcom/moat/analytics/mobile/inm/ap;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    return-void
.end method

.method static a(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/inm/ao;",
            "Lcom/moat/analytics/mobile/inm/az",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/inm/bb",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/moat/analytics/mobile/inm/bb;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/moat/analytics/mobile/inm/ax;

    invoke-direct {v2, p0, p1, p2}, Lcom/moat/analytics/mobile/inm/ax;-><init>(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->d:Lcom/moat/analytics/mobile/inm/bb;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/bb;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getClass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "toString"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/moat/analytics/mobile/inm/ax;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/inm/ax;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/ax;->c()V

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/inm/ax;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/ao;->a()Lcom/moat/analytics/mobile/inm/aq;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/inm/aq;->b:Lcom/moat/analytics/mobile/inm/aq;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/ax;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/ao;->a()Lcom/moat/analytics/mobile/inm/aq;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/inm/aq;->a:Lcom/moat/analytics/mobile/inm/aq;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/inm/ax;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/inm/ax;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/inm/ax;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/inm/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/ax;->b()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/inm/ax;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 12

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/inm/ax;->g:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->c:Lcom/moat/analytics/mobile/inm/az;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/az;->a()Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/inm/base/functional/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/inm/ax;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/ax;->e:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/inm/ba;

    :try_start_1
    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/ba;->a(Lcom/moat/analytics/mobile/inm/ba;)[Ljava/lang/ref/WeakReference;

    move-result-object v2

    array-length v2, v2

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/ba;->a(Lcom/moat/analytics/mobile/inm/ba;)[Ljava/lang/ref/WeakReference;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    move v4, v3

    :goto_3
    if-ge v2, v10, :cond_3

    aget-object v11, v9, v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/ba;->b(Lcom/moat/analytics/mobile/inm/ba;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/inm/ax;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/inm/ba;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/inm/ba;-><init>(Lcom/moat/analytics/mobile/inm/ax;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/inm/ay;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/inm/ba;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/inm/ba;-><init>(Lcom/moat/analytics/mobile/inm/ax;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/inm/ay;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/inm/ax;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/inm/ax;->g:Z

    return v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ax;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/inm/ax;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/inm/ax;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
