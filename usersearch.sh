#!/bin/bash
# UserRecon v1.0
# Author: @thelinuxchoice
# Tiklangan va optimallashtirilgan variant

trap 'printf "\n";partial;exit 1' 2

banner() {
    printf "                                                   \e[1;92m.-\"\"\"\"-. \e[0m\n"
    printf "                                                  \e[1;92m/        \\\\ \e[0m\n"
    printf "\e[1;77m  _   _               ____                       \e[0m\e[1;92m/_        _>\e[0m\n"
    printf "\e[1;77m | | | |___  ___ _ __|  _ \\ ___  ___ ___  _ __  \e[0m\e[1;92m// \\\\      / >\e[0m\n"
    printf "\e[1;77m | | | / __|/ _ \\ '__| |_) / _ \\/ __/ _ \\| '_ \\ \e[0m\e[1;92m|\\\\__|    /__>\e[0m\n"
    printf "\e[1;77m | |_| \\__ \\  __/ |  |  _ <  __/ (_| (_) | | | | \e[0m\e[1;92m\\\\    ||    >\e[0m\n"
    printf "\e[1;77m  \\___/|___/\\___|_|  |_| \\_\\___|\\___\\___/|_| |_|  \e[0m\e[1;92m\\\\        />\e[0m\n"
    printf "                   \e[1;92mv1.0, Author: @thelinuxchoice\e[0m   \e[1;92m\\\\  __  / >\e[0m\n"
    printf "                                                    \e[1;92m'.__.' \e[0m\n"
}

partial() {
    if [[ -e $username.txt ]]; then
        printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saqlandi:\e[0m\e[1;77m %s.txt\n" $username
    fi
}

scanner() {
    read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Foydalanuvchi nomini kiriting:\e[0m ' username

    if [[ -z "$username" ]]; then
        printf "\e[1;91m[-] Bo'sh nom kiritish mumkin emas!\e[0m\n"
        exit 1
    fi

    if [[ -e $username.txt ]]; then
        printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Eski fayl o'chirilmoqda:\e[0m\e[1;77m %s.txt\e[0m\n" $username
        rm -rf $username.txt
    fi
    
    printf "\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Tekshirilmoqda:\e[0m\e[1;77m %s\e[0m\n\n" $username

    ## INSTAGRAM
    printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m"
    check_insta=$(curl -s -o /dev/null -w "%{http_code}" -H "Accept-Language: en" "https://www.instagram.com/$username")
    if [[ $check_insta -eq 200 ]]; then
        printf "\e[1;92m Topildi!\e[0m https://www.instagram.com/%s\n" $username
        printf "https://www.instagram.com/%s\n" $username > $username.txt
    else
        printf "\e[1;93mTopilmadi!\e[0m\n"
    fi

    ## FACEBOOK
    printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Facebook: \e[0m"
    check_face=$(curl -s -o /dev/null -w "%{http_code}" -H "Accept-Language: en" "https://www.facebook.com/$username")
    if [[ $check_face -eq 200 ]]; then
        printf "\e[1;92m Topildi!\e[0m https://www.facebook.com/%s\n" $username
        printf "https://www.facebook.com/%s\n" $username >> $username.txt
    else
        printf "\e[1;93mTopilmadi!\e[0m\n"
    fi

    ## TWITTER (X)
    printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Twitter: \e[0m"
    check_twitter=$(curl -s -o /dev/null -w "%{http_code}" -H "Accept-Language: en" "https://x.com")
    if [[ $check_twitter -eq 200 ]]; then
        printf "\e[1;92m Topildi!\e[0m https://x.com\n" $username
        printf "https://x.com\n" $username >> $username.txt
    else
        printf "\e[1;93mTopilmadi!\e[0m\n"
    fi

    ## YOUTUBE
    printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] YouTube: \e[0m"
    check_youtube=$(curl -s -o /dev/null -w "%{http_code}" -H "Accept-Language: en" "https://youtube.com")
    if [[ $check_youtube -eq 200 ]]; then
        printf "\e[1;92m Topildi!\e[0m https://youtube.com\n" $username
        printf "https://youtube.com\n" $username >> $username.txt
    else
        printf "\e[1;93mTopilmadi!\e[0m\n"
    fi

    ## BLOGGER
    printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Blogger: \e[0m"
    check_blogger=$(curl -s -o /dev/null -w "%{http_code}" "https://$username.blogspot.com")
    if [[ $check_blogger -eq 200 ]]; then
        printf "\e[1;92m Topildi!\e[0m https://%s.blogspot.com\n" $username
        printf "https://%s.blogspot.com\n" $username >> $username.txt
    else
        printf "\e[1;93mTopilmadi!\e[0m\n"
    fi
}

banner
scanner
partial
