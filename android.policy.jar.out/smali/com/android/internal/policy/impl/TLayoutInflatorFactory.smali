.class public Lcom/android/internal/policy/impl/TLayoutInflatorFactory;
.super Ljava/lang/Object;
.source "TLayoutInflatorFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TLayoutInflatorFactory"

.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static mPackageName:Ljava/lang/String;

.field private static sClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoader:Ldalvik/system/PathClassLoader;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    :cond_1
    sput-object p1, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoader:Ldalvik/system/PathClassLoader;

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x0

    const-string v11, "TLayoutInflatorFactory"

    .line 40
    const-string v8, "TLayoutInflatorFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current view is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v8, -0x1

    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 47
    const-string v8, "TLayoutInflatorFactory"

    const-string v8, "Current view is defined by android , we just return null,and construct it by default."

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 69
    .end local p0
    :goto_0
    return-object v8

    .line 52
    .restart local p0
    :cond_0
    :try_start_0
    sget-object v8, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v8, :cond_1

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 54
    .local v7, pm:Landroid/content/pm/PackageManager;
    sget-object v8, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 55
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 56
    .local v1, apkPath:Ljava/lang/String;
    new-instance v8, Ldalvik/system/PathClassLoader;

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v8, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoader:Ldalvik/system/PathClassLoader;

    .line 59
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #apkPath:Ljava/lang/String;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v8, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->sClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v8, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v8, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 61
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    const/4 v8, 0x1

    aput-object p3, v2, v8

    .line 62
    .local v2, args:[Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, p0

    goto :goto_0

    .line 63
    .end local v2           #args:[Ljava/lang/Object;
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v4           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 64
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v8, v10

    .line 65
    goto :goto_0

    .line 66
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 67
    .local v5, e:Ljava/lang/Exception;
    const-string v8, "TLayoutInflatorFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v10

    .line 69
    goto :goto_0
.end method
