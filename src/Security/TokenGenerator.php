<?php


namespace App\Security;

/**
 * Class TokenGenerator helps to create random tokens
 * @package App\Security
 */
class TokenGenerator
{
    const ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123446789';

    /**
     * Generate a random token
     *
     * @param int $length
     * @return string
     * @throws \Exception
     */
    public function getRandomSecureToken(int $length = 40): string
    {
        $token = '';

        for ($i = 0; $i < $length; $i++) {
            $token .= self::ALPHABET[random_int(0, strlen(self::ALPHABET) - 1)];
        }

        return $token;
    }
}

// twigFooter