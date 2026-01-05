# Extended Libft

Genişletilmiş Libft - Standard libft kütüphanesine ekstra fonksiyonlar ve özellikler eklenmiş versiyon.

## 📋 Proje Hakkında

Extended Libft, klasik 42 Libft projesinin genişletilmiş versiyonudur. Temel libft fonksiyonlarının yanı sıra, daha kompleks projeler için gerekli olan ek fonksiyonlar ve yardımcı araçlar içerir. Bu kütüphane, ileri düzeyde C projelerinde kullanılmak üzere optimize edilmiştir.

## ✨ Özellikler

### Temel Libft Fonksiyonları
- Tüm standard libft fonksiyonları
- String manipülasyonu
- Bellek yönetimi
- Linked list işlemleri

### Genişletilmiş Özellikler
- Gelişmiş string işlemleri
- Sayısal dönüştürmeler
- Hata yönetimi fonksiyonları
- İkili ağaç (binary tree) implementasyonu
- Hash table yapıları
- Matematiksel yardımcı fonksiyonlar
- Dosya işleme araçları

## 🛠️ Kurulum

### Derleme

```bash
# Tüm fonksiyonları derle
make

# Bonus fonksiyonlar ile birlikte
make bonus

# Object dosyalarını temizle
make clean

# Tüm derleme çıktılarını temizle
make fclean

# Yeniden derle
make re
```

### Projenize Entegre Etme

```c
#include "libft.h"

int main(void)
{
    // String işlemleri
    char *str = ft_strjoin("Merhaba ", "Dünya!");
    ft_putendl_fd(str, 1);
    
    // Linked list kullanımı
    t_list *list = ft_lstnew("Eleman 1");
    ft_lstadd_back(&list, ft_lstnew("Eleman 2"));
    
    // Temizlik
    free(str);
    ft_lstclear(&list, free);
    return (0);
}
```

Derleme komutu:
```bash
gcc main.c -L. -lft -o program
./program
```

## 📚 Proje Yapısı

```
extended_libft/
├── Makefile          # Derleme dosyası
├── libft.h           # Header dosyası
├── ft_*.c            # Fonksiyon implementasyonları
└── README.md         # Dokümantasyon
```

## 🚀 Kullanım Alanları

- **get_next_line**: Dosyadan satır okuma projelerinde
- **ft_printf**: Formatlı çıktı projelerinde
- **minishell**: Kabuk (shell) projelerinde
- **cub3d / so_long**: Oyun projelerinde
- **philosophers**: Çoklu iş parçacığı (threading) projelerinde
- **push_swap**: Sıralama algoritması projelerinde

## 📝 Gereksinimler

- GCC derleyici (veya herhangi bir C derleyici)
- Make
- C99 veya daha yeni C standardı

## 🔍 Norm Uygulaması

Bu proje 42 okulunun **Norm** kodlama standartlarına uygundur:
- Fonksiyon başına maksimum 25 satır
- Satır başına maksimum 80 karakter
- Fonksiyon başına maksimum 4 parametre
- Her fonksiyon için maksimum 5 değişken

## 🤝 Katkıda Bulunma

1. Bu repository'yi fork edin
2. Yeni bir branch oluşturun (`git checkout -b feature/yeniOzellik`)
3. Değişikliklerinizi commit edin (`git commit -m 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeniOzellik`)
5. Pull Request oluşturun

## 📝 Lisans

Bu proje eğitim amaçlıdır ve 42 okulu müfredatı kapsamındadır.

## 👤 Geliştirici

**TroubledKezoo1**

Proje Linki: [https://github.com/TroubledKezoo1/extended_libft](https://github.com/TroubledKezoo1/extended_libft)

---

*Not: Bu kütüphane, 42 okulunun diğer projelerinde temel kütüphane olarak kullanılabilir.*